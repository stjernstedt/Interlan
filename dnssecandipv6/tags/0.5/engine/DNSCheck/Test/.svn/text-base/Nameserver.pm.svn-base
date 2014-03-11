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

package DNSCheck::Test::Nameserver;

require 5.8.0;
use warnings;
use strict;

use Net::IP 1.25 qw(ip_get_version);

use DNSCheck::Test::Host;

######################################################################

sub test {
    my $context    = shift;
    my $zone       = shift;
    my $nameserver = shift;

    my $qclass = $context->qclass;
    my $logger = $context->logger;
    my $errors = 0;

    my $packet;

    $logger->module_stack_push();
    $logger->info("NAMESERVER:BEGIN", $nameserver);

    # REQUIRE: Nameserver must be a valid hostname
    if (DNSCheck::Test::Host::test($context, $nameserver)) {
        $logger->error("NAMESERVER:HOST_ERROR", $nameserver);
        $errors++;
        goto DONE;
    }

    my @addresses = $context->dns->find_addresses($nameserver, $qclass);

  ADDRESS: foreach my $address (@addresses) {

        my $skip_tcp = undef;

        if (ip_get_version($address) == 4 && !$context->{ipv4}) {
            $logger->info("NAMESERVER:SKIPPED_IPV4", $address);
            next ADDRESS;
        }

        if (ip_get_version($address) == 6 && !$context->{ipv6}) {
            $logger->info("NAMESERVER:SKIPPED_IPV6", $address);
            next ADDRESS;
        }

        # REQUIRE: Nameserver should not be recursive
        $logger->debug("NAMESERVER:CHECKING_RECURSION", $nameserver, $address);
        if ($context->dns->address_is_recursive($address, $qclass)) {
            $logger->warning("NAMESERVER:RECURSIVE", $nameserver, $address);
        } else {
            $logger->info("NAMESERVER:NOT_RECURSIVE", $nameserver, $address);
        }

        # REQUIRE: Nameserver must be authoritative for the zone
        #          [IIS.KVSE.001.01/r3,IIS.KVSE.001.01/r6]
        $logger->debug("NAMESERVER:CHECKING_AUTH", $nameserver, $address);
        if ($context->dns->address_is_authoritative($address, $zone, $qclass)) {
            $logger->error("NAMESERVER:NOT_AUTH", $nameserver, $address, $zone);
            $errors++;
            next ADDRESS;
        } else {
            $logger->info("NAMESERVER:AUTH", $nameserver, $address, $zone);
        }

        # REQUIRE: SOA must be fetchable over any protocol (UDP/TCP)
        $logger->debug("NAMESERVER:TESTING_UDP", $nameserver, $address);
        $packet =
          $context->dns->query_explicit($zone, $qclass, "SOA", $address,
            { transport => "udp" });
        if ($packet) {
            $logger->info("NAMESERVER:UDP_OK", $nameserver, $address, $zone);
        } else {
            $logger->error("NAMESERVER:NO_UDP", $nameserver, $address, $zone);
            $errors++;
        }

        $logger->debug("NAMESERVER:TESTING_TCP", $nameserver, $address);
        $packet =
          $context->dns->query_explicit($zone, $qclass, "SOA", $address,
            { transport => "tcp" });
        if ($packet) {
            $logger->info("NAMESERVER:TCP_OK", $nameserver, $address, $zone);
        } else {
            $logger->error("NAMESERVER:NO_TCP", $nameserver, $address, $zone);
            $errors++;
            $skip_tcp = 1;
        }

        # REQUIRE: Nameserver may provide AXFR

        $logger->debug("NAMESERVER:TESTING_AXFR", $nameserver, $address);
        if ($skip_tcp) {
            $logger->info("NAMESERVER:AXFR_SKIP", $nameserver, $address, $zone);
        } else {
            if ($context->dns->check_axfr($address, $zone, $qclass)) {
                $logger->notice("NAMESERVER:AXFR_OPEN", $nameserver, $address,
                    $zone);
            } else {
                $logger->info("NAMESERVER:AXFR_CLOSED",
                    $nameserver, $address, $zone);
            }
        }

        # Check for possible identification
        $logger->debug("NAMESERVER:CHECKING_LEGACY_ID", $nameserver, $address);
        _check_id($context, $nameserver, $address);

        # FIXME: remove comment once query_nsid is complete
        #$logger->debug("NAMESERVER:CHECKING_NSID", $nameserver, $address);
        #my $nsid = $context->dns->query_nsid($address, $zone, $qclass, "SOA");
        #if ($nsid) {
        #    $logger->info("NAMESERVER:NSID", $nameserver, $address, $nsid);
        #}
    }

  DONE:
    $logger->info("NAMESERVER:END", $nameserver);
    $logger->module_stack_pop();

    return $errors;
}

sub _check_id {
    my $context    = shift;
    my $nameserver = shift;
    my $address    = shift;

    my $qclass = $context->qclass;
    my $logger = $context->logger;

    my @domains =
      ("hostname.bind", "version.bind", "id.server", "version.server");

    my $packet;

    for my $domain (@domains) {
        $packet = $context->dns->query_explicit($domain, "CH", "TXT", $address);

        if ($packet) {
            next unless ($packet);

            foreach my $rr ($packet->answer) {
                next unless ($rr->type eq "TXT");

                $logger->info("NAMESERVER:LEGACY_ID", $nameserver, $address,
                    $domain, $rr->txtdata);
            }
        }
    }
}

1;

__END__


=head1 NAME

DNSCheck::Test::Nameserver - Test a single nameserver

=head1 DESCRIPTION

Test a single name server for a specific zone. The following tests are made:

=over 4

=item *
The nameserver must be a valid hostname.

=item *
The nameserver should not be recursive.

=item *
The nameserver must be authoritative for the zone.

=item *
The SOA record for the zone must be fetchable over both UDP and TCP.

=item *
The nameserver may provide AXFR for the zone.

=back

=head1 METHODS

test(I<context>, I<zone>, I<nameserver>);

=head1 EXAMPLES

    use DNSCheck::Context;
    use DNSCheck::Test::Nameserver;

    my $context = new DNSCheck::Context();
    DNSCheck::Test::Nameserver::test($context, "se", "a.ns.se");
    $context->logger->dump();

=head1 SEE ALSO

L<DNSCheck>, L<DNSCheck::Context>, L<DNSCheck::Logger>,
L<DNSCheck::Test::Host>

=cut
