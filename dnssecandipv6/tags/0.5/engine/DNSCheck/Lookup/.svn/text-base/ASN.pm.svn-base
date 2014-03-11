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

package DNSCheck::Lookup::ASN;

require 5.8.0;
use warnings;
use strict;

use Data::Dumper;
use Net::DNS;

######################################################################

our $asn_domain = "asn.routeviews.org.";
our $asn_magic  = 4294967295;

######################################################################

sub new {
    my $proto = shift;
    my $class = ref($proto) || $proto;
    my $self  = {};

    $self->{logger} = shift;
    $self->{dns}    = shift;

    die "missing logger" unless $self->{logger};
    die "missing dns"    unless $self->{dns};

    # hash of ASN indexed by IP
    $self->{asn} = ();

    bless $self, $class;
}

sub lookup {
    my $self = shift;
    my $ip   = shift;

    $self->{logger}->debug("ASN:LOOKUP", $ip);

    if ($ip !~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/) {
        $self->{logger}->debug("ASN:INVALID_ADDRESS", $ip);
        return undef;
    }

    unless ($self->{asn}{$ip}) {
        $self->{asn}{$ip} = $self->_asn_helper($ip);
    }

    my $asn = $self->{asn}{$ip};

    if ($asn) {
        if (scalar @{$asn} > 0) {
            $self->{logger}->debug("ASN:ANNOUNCE_BY", $ip, join(",", @{$asn}));
        } else {
            $self->{logger}->debug("ASN:NOT_ANNOUNCE", $ip);
        }
    } else {
        $self->{logger}->debug("ASN:LOOKUP_ERROR", $ip);
    }

    return $asn;
}

sub _asn_helper {
    my $self = shift;
    my $ip   = shift;

    my @asn_list = ();

    my $qname =
      sprintf("%s.%s", join(".", reverse(split(/\./, $ip))), $asn_domain);

    my $packet = $self->{dns}->query_resolver($qname, "IN", "TXT");

    unless ($packet->header->ancount) {
        ## lookup failure
        return undef;
    }

    foreach my $rr (@{ $packet->{answer} }) {
        if ($rr->rdatastr =~ /^\"(\d+)\"/) {
            if ($1 eq $asn_magic) {
                ## IP address not announced
                goto DONE;
            } else {
                ## IP address announced
                push @asn_list, $1;
            }
        }
    }

  DONE:
    return \@asn_list;
}

1;

__END__


=head1 NAME

DNSCheck::Lookup::ASN - AS Number Lookup

=head1 DESCRIPTION

Helper functions for looking up AS (Autonomous System) numbers using 
B<asn.cymru.com>.

=head1 METHODS

new(I<logger>, I<dns>);

my $n = $asn->lookup(I<address>);

=head1 EXAMPLES

    use DNSCheck::Logger;
    use DNSCheck::Lookup::DNS;
    use DNSCheck::Lookup::ASN;

    my $logger = new DNSCheck::Logger;
    my $dns    = new DNSCheck::Lookup::DNS($logger);
    my $asn    = new DNSCheck::Lookup::ASN($logger, $dns);

    $asn->lookup("64.233.183.99");

    $logger->dump();

=head1 SEE ALSO

L<DNSCheck::Logger>, L<DNSCheck::Lookup::DNS>

=cut
