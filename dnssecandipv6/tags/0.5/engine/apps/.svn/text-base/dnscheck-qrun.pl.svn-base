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

require 5.8.0;
use warnings;
use strict;

use Getopt::Long;
use Pod::Usage;
use POSIX qw(setsid);
use DNSCheck::Engine;

######################################################################

my $config = "/etc/dnscheck.conf";

sub main {
    my $help      = 0;
    my $chunksize = 10;
    my $sleep     = 10;
    my $realtime  = 0;
    my $processes = 1;
    my $facility  = "daemon";
    my $debug     = 0;

    my $prio_low  = undef;
    my $prio_high = undef;

    GetOptions(
        'help|?'      => \$help,
        'config=s'    => \$config,
        'chunksize=i' => \$chunksize,
        'sleep=i'     => \$sleep,
        'processes=i' => \$processes,
        'realtime'    => \$realtime,
        'debug'       => \$debug,
    ) or pod2usage(2);
    pod2usage(1) if ($help);

    if ($debug) {
        $facility = undef;
    }

    # realtime process handles only priority 5-10
    # non-realtime process handles only priority 0-4
    if ($realtime) {
        $prio_low  = 5;
        $prio_high = 10;
    } else {
        $prio_low  = 0;
        $prio_high = 4;
    }

    daemonize() if ($facility);

    my $n = $processes;

    while ($n) {
        $n--;

        my $pid = fork;

        if ($pid) {
            print STDERR "Engine $pid forked\n" if ($debug);
            next;
        }

        my $engine = new DNSCheck::Engine(
            {
                syslog_facility => $facility,
                db_config       => $config,
                udp_timeout     => 2,
                tcp_timeout     => 5,
                retry           => 3,
                retrans         => 2,
                disable_ipv4    => 0,
                disable_ipv6    => 0,
                ignore_debug    => 1,
                debug           => $debug,
                prio_low        => $prio_low,
                prio_high       => $prio_high,
            }
        );

        $engine->daemon($chunksize, $sleep);
    }

    print STDERR "Forked $processes engine processes\n" if ($debug);
}

sub daemonize {
    chdir '/' or die "Can't chdir to /: $!";
    open STDIN,  '/dev/null'   or die "Can't read /dev/null: $!";
    open STDOUT, '>>/dev/null' or die "Can't write to /dev/null: $!";
    open STDERR, '>>/dev/null' or die "Can't write to /dev/null: $!";
    defined(my $pid = fork) or die "Can't fork: $!";
    exit if $pid;
    setsid or die "Can't start a new session: $!";
    umask 0;
}

main();

__END__

=head1 NAME

dnscheck-qrun - DNSCheck Queue Runner

=head1 SYNOPSIS

dnscheck-qrun [options]

Options:

 --help                brief help message
 --chunksize=N         number of domains to test per run
 --config=FILE         database configuration file
 --facility=FACILITY   syslog facility
 --processes=N         number of processes to start
 --realtime            process realtime priorities only
 --sleep=SECONDS       seconds between empty batches
