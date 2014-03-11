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

package DNSCheck::Test::Address;

require 5.8.0;
use warnings;
use strict;

use Net::IP 1.25;

######################################################################

our @private_ipv4  = ();
our @reserved_ipv4 = ();
our @reserved_ipv6 = ();

INIT {

    # REQUIRE: Private IPv4 Addresses (RFC 1918)
    push @private_ipv4, new Net::IP("10.0.0.0/8");
    push @private_ipv4, new Net::IP("172.16.0.0/12");
    push @private_ipv4, new Net::IP("192.168.0.0/16");

    # REQUIRE: Special-Use IPv4 Addresses (RFC 3330)
    push @reserved_ipv4, new Net::IP("127.0.0.0/8");
    push @reserved_ipv4, new Net::IP("224.0.0.0/4");
    push @reserved_ipv4, new Net::IP("0.0.0.0/8");
    push @reserved_ipv4, new Net::IP("169.254.0.0/16");
    push @reserved_ipv4, new Net::IP("192.0.2.0/24");
    push @reserved_ipv4, new Net::IP("192.88.99.0/24");
    push @reserved_ipv4, new Net::IP("198.18.0.0/15");
    push @reserved_ipv4, new Net::IP("240.0.0.0/4");

    # REQUIRE: Special-Use IPv6 Addresses
    # (draft-ietf-v6ops-rfc3330-for-ipv6-04.txt)
    push @reserved_ipv6, new Net::IP("::1/128");
    push @reserved_ipv6, new Net::IP("ff00::/8");
    push @reserved_ipv6, new Net::IP("::/128");
    push @reserved_ipv6, new Net::IP("::ffff:0:0/96");
    push @reserved_ipv6, new Net::IP("fe80::/10");
    push @reserved_ipv6, new Net::IP("fc00::/7");
    push @reserved_ipv6, new Net::IP("2001:0db8::/32");
}

######################################################################

sub test {
    my $context = shift;
    my $address = shift;

    my $qclass = $context->qclass;
    my $logger = $context->logger;
    my $errors = 0;

    $logger->module_stack_push();
    $logger->info("ADDRESS:BEGIN", $address);

    # REQUIRE: Address must be syntactically correct
    my $ip = new Net::IP($address);
    unless ($ip) {
        $logger->error("ADDRESS:INVALID", $address);
        $errors++;
        goto DONE;
    }

    # REQUIRE: Do not allow private IPv4 Addresses
    if ($ip->version == 4) {
        foreach my $prefix (@private_ipv4) {
            if ($ip->overlaps($prefix)) {
                $logger->error("ADDRESS:PRIVATE_IPV4", $address);
                $errors++;
                goto DONE;
            }
        }
    }

    # REQUIRE: Do not allow reserved IPv4 Addresses
    if ($ip->version == 4) {
        foreach my $prefix (@reserved_ipv4) {
            if ($ip->overlaps($prefix)) {
                $logger->error("ADDRESS:RESERVED_IPV4", $address);
                $errors++;
                goto DONE;
            }
        }
    }

    # REQUIRE: Do not allow reserved IPv6 Addresses
    if ($ip->version == 6) {
        foreach my $prefix (@reserved_ipv6) {
            if ($ip->overlaps($prefix)) {
                $logger->error("ADDRESS:RESERVED_IPV6", $address);
                $errors++;
                goto DONE;
            }
        }
    }

    # REQUIRE: PTR should exist for address
    my $reverse = $ip->reverse_ip();
    my $ptr = $context->dns->query_resolver($reverse, $qclass, "PTR");

    unless ($ptr && $ptr->header->ancount) {
        $logger->warning("ADDRESS:PTR_NOT_FOUND", $address, $reverse);
        $errors++;
    } else {

        # REQUIRE: Hostname in PTR should exist
        # FIXME: check that at least one name points back to $address
        foreach my $p ($ptr->answer) {
            next unless ($p->type eq "PTR");

            my $hostname = $p->ptrdname;
            my $ipv4 = $context->{dns}->query_resolver($hostname, $qclass, "A");
            my $ipv6 =
              $context->{dns}->query_resolver($hostname, $qclass, "AAAA");

            unless (($ipv4 && $ipv4->header->ancount)
                || ($ipv6 && $ipv6->header->ancount))
            {
                $logger->warning("ADDRESS:PTR_HOSTNAME_NOT_FOUND",
                    $address, $hostname);
                $errors++;
                goto DONE;
            }
        }
    }

  DONE:
    $logger->info("ADDRESS:END", $address);
    $logger->module_stack_pop();

    return $errors;
}

1;

__END__


=head1 NAME

DNSCheck::Test::Address - Test for valid IP addresses

=head1 DESCRIPTION

Tests for valid (and resonable) IP addresses. The following tests are made:

=over 4

=item *
Addresses must be syntactically correct.

=item *
Private IPv4 Addresses (RFC 1918) must not be used.

=item *
Special-Use IPv4 Addresses (RFC 3330)  must not be used.

=item *
Special-Use IPv6 Addresses must not be used.

=item *
There should exist a PTR record for the address.

=item *
The hostname(s) pointed to by the PTR record(s) should exist.

=back

=head1 METHODS

test(I<context>, I<address>);

=head1 EXAMPLES

    use DNSCheck::Context;
    use DNSCheck::Test::Address;

    my $context = new DNSCheck::Context();
    DNSCheck::Test::Address::test($context, "127.0.0.1");
    $context->logger->dump();

=head1 SEE ALSO

L<DNSCheck>, L<DNSCheck::Context>, L<DNSCheck::Logger>

=cut
