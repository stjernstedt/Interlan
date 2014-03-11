#!/usr/bin/perl
#
# $Id$
#
# Copyright (c) 2007 .SE (The Internet Infrastructure Foundation).
#                    All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
# GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
# IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
######################################################################

package DNSCheck::Engine;

require 5.8.0;
use warnings;
use strict;

use Date::Format;
use DBI;
use DBD::mysql;
use Sys::Syslog;
use Data::Dumper;
use Time::HiRes qw(usleep);

use DNSCheck;

my $continue = 1;

######################################################################

sub sighandler {
    my $signame = shift;

    if ($signame eq "QUIT") {
        $continue = 0;
    } else {
        die "Got unconfigured signal $signame";
    }
}

sub new {
    my $proto = shift;
    my $class = ref($proto) || $proto;
    my $self  = {};

    my $config = shift;

    unless ($config->{db_config}) {
        $config->{db_config} = "./dnscheck.conf";
    }

    if ($config->{syslog_facility}) {
        $self->{syslog} = 1;
    } else {
        $self->{syslog} = 0;
    }

    $self->{prio_low}  = $config->{prio_low};
    $self->{prio_high} = $config->{prio_high};

    if ($self->{syslog}) {
        openlog("dnscheck", "pid", $config->{syslog_facility});
    }

    my $dsn = sprintf(
        "DBI:mysql:database="
          . ";mysql_read_default_group=dnscheck"
          . ";mysql_read_default_file=%s",
        $config->{db_config}
    );

    $self->{dbh} =
      DBI->connect($dsn, undef, undef, { RaiseError => 1, AutoCommit => 1 })
      || die "can't connect to database $dsn";

    $self->{debug}        = $config->{debug};
    $self->{ignore_debug} = $config->{ignore_debug};

    $self->{dnscheck} = new DNSCheck($config);

    bless $self, $class;
}

sub DESTROY {
    my $self = shift;

    $self->{dbh}->disconnect();
}

sub message {
    my $self = shift;
    my $prio = shift @_;
    my @args = @_;

    if ($self->{syslog}) {
        syslog($prio, @args);
    }

    if ($self->{debug}) {
        printf("dnscheck[%d] ", $$);
        printf(@args);
        printf("\n");
    }
}

sub daemon {
    my $self      = shift;
    my $chunksize = shift;
    my $sleep     = shift;

    $self->message("info", "Starting DNSCheck Engine Daemon");

    usleep(int(rand($sleep * 1000)));

    $SIG{'QUIT'} = \&sighandler;

    while ($continue) {
        if ($self->process($chunksize, $sleep) == 0) {
            $self->message("debug", "zzz...") if ($self->{debug});
            sleep($sleep);
        }
    }

    $self->message("info", "Got SIGHUP, exiting.");

    exit(0);
}

sub process {
    my $self  = shift;
    my $count = shift;

    my $dbh = $self->{dbh};

    my $batch = _dequeue($dbh, $count, $self->{prio_low}, $self->{prio_high});

    if ($batch) {
        $self->message("info", "Got %d entries from queue", scalar(@$batch));
    } else {
        $self->message("critical", "Queue error");
        return 0;
    }

    foreach my $q (@$batch) {
        $self->message("info", "Testing %s (id=%d)\n", $q->{domain}, $q->{id});

        $self->test($q->{domain});

        $self->message("info", "Deleting %s (id=%d) from queue",
            $q->{domain}, $q->{id});

        $dbh->do(sprintf("DELETE FROM queue WHERE id=%d ", $q->{id}));
    }

    return scalar(@$batch);
}

sub _dequeue {
    my $dbh       = shift;
    my $count     = shift;
    my $prio_low  = shift;
    my $prio_high = shift;

    my $limit = "";

    $limit = sprintf(" LIMIT %d", $count) if ($count);

    # this is ugly, but a man has to do what a man has to do
    $dbh->do("LOCK TABLES queue WRITE");

    my $batch = $dbh->selectall_arrayref(
        " SELECT id, domain FROM queue "
          . " WHERE inprogress IS NULL "
          . ($prio_low  ? " AND priority >= $prio_low "  : "")
          . ($prio_high ? " AND priority <= $prio_high " : "")
          . " ORDER BY priority DESC "
          . $limit,
        { Slice => {} }
    );

    foreach my $q (@$batch) {
        $dbh->do(
            sprintf(
                " UPDATE queue SET inprogress = NOW() WHERE id =
              %d ", $q->{id}
            )
        );
    }

    $dbh->do("UNLOCK TABLES");

    return $batch;
}

sub test {
    my $self = shift;
    my $zone = shift;

    my $logger = $self->{dnscheck}->logger;
    my $dbh    = $self->{dbh};

    my $timeformat = "%Y-%m-%d %H:%m:%S";

    # fetch history
    my $history = $dbh->selectcol_arrayref(
        sprintf(
            "SELECT DISTINCT nameserver FROM delegation_history "
              . "WHERE domain=%s",
            $dbh->quote($zone)
        )
    );

    $dbh->begin_work();
    eval {
        my $count_critical = 0;
        my $count_error    = 0;
        my $count_warning  = 0;
        my $count_notice   = 0;
        my $count_info     = 0;

        $logger->clear($zone);
        $logger->logname($zone);

        $dbh->do(
            sprintf(
                "INSERT INTO tests (domain,begin,end) VALUES(%s,NOW(),NULL)",
                $dbh->quote($zone))
        );

        my $id = $dbh->{'mysql_insertid'};

        DNSCheck::zone($self->{dnscheck}, $zone, $history);

        $dbh->do(sprintf("UPDATE tests SET end=NOW() WHERE id=%d", $id));

        my $line = 0;

        print STDERR Dumper($logger);

        foreach my $logentry (@{ $logger->export }) {
	
            my $timestamp = shift @$logentry;
            my $context   = shift @$logentry;
            my $level     = shift @$logentry;
            my $tag       = shift @$logentry;
            my $module_id =
              shift @$logentry; # Id of the module that logged the current entry
            my $parent_module_id = shift
              @$logentry;   # Id of the parent module that called current module
            my @arg = @$logentry;

            next if ($level eq "DEBUG" && $self->{ignore_debug});

            $line++;

            $count_critical++ if ($level eq "CRITICAL");
            $count_error++    if ($level eq "ERROR");
            $count_warning++  if ($level eq "WARNING");
            $count_notice++   if ($level eq "NOTICE");
            $count_info++     if ($level eq "INFO");

            $dbh->do(
                sprintf(
                    "INSERT INTO results "
                      . "(test_id,line,module_id,parent_module_id,timestamp,level,message,"
                      . "arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9) "
                      . "VALUES(%d,%d,%d,%d,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)",
                    $id,
                    $line,
                    $module_id,
                    $parent_module_id,
                    $dbh->quote(time2str($timeformat, $timestamp)),
                    $dbh->quote($level),
                    $dbh->quote($tag),
                    $dbh->quote($arg[0]),
                    $dbh->quote($arg[1]),
                    $dbh->quote($arg[2]),
                    $dbh->quote($arg[3]),
                    $dbh->quote($arg[4]),
                    $dbh->quote($arg[5]),
                    $dbh->quote($arg[6]),
                    $dbh->quote($arg[7]),
                    $dbh->quote($arg[8]),
                    $dbh->quote($arg[9])
                )
            );
        }

        $dbh->do(
            sprintf(
                "UPDATE tests SET "
                  . "count_critical=%d,"
                  . "count_error=%d,"
                  . "count_warning=%d,"
                  . "count_notice=%d,"
                  . "count_info=%d "
                  . "WHERE id=%d",
                $count_critical, $count_error, $count_warning,
                $count_notice,   $count_info,  $id
            )
        );

        $dbh->do(
            sprintf("UPDATE domains SET last_test=NOW() WHERE domain=%s",
                $dbh->quote($zone))
        );

        $logger->clear($zone);
    };

    if ($@) {
        $dbh->rollback;
        $self->message("critical", "Engine crashed while testing %s", $zone);
    } else {
        $dbh->commit;
    }
}

1;

__END__
