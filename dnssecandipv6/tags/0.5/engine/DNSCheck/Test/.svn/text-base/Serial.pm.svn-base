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

package DNSCheck::Test::Serial;

require 5.8.0;
use warnings;
use strict;

######################################################################

sub test {
    my $context = shift;
    my $zone    = shift;

    my $qclass = $context->qclass;
    my $logger = $context->logger;
    my $errors = 0;

    $logger->module_stack_push();
    $logger->info("SERIAL:BEGIN", $zone);

    my %serial_counter;
	my @nameservers = ();

    if ($context->{ipv4}) {
        my $ipv4 = $context->dns->get_nameservers_ipv4($zone, $qclass);
        push @nameservers, @{$ipv4} if ($ipv4);
    }

    if ($context->{ipv6}) {
        my $ipv6 = $context->dns->get_nameservers_ipv6($zone, $qclass);
        push @nameservers, @{$ipv6} if ($ipv6);
    }

    foreach my $address (@nameservers) {
        my $packet =
          $context->dns->query_explicit($zone, $qclass, "SOA", $address);

        next unless ($packet);

        foreach my $rr ($packet->answer) {
            next unless ($rr->type eq "SOA");

            my $serial = $rr->serial;

            $logger->info("SERIAL:SOA_AT_ADDRESS", $address, $serial);

            $serial_counter{$serial}++;
        }
    }

    my $unique_serials = scalar keys %serial_counter;

    if ($unique_serials > 1) {
        $logger->warning("SERIAL:DIFFERENT", $unique_serials);
    } else {
        $logger->info("SERIAL:CONSISTENT");
    }

  DONE:
    $logger->info("SERIAL:END", $zone);
    $logger->module_stack_pop();

    return 0;
}

1;

__END__


=head1 NAME

DNSCheck::Test::Serial - Test zone serial number

=head1 DESCRIPTION

Test the zone serial number. The following tests are made:

=over 4

=item *
The serial number of the zone must be the same at all listed name servers.

=back

=head1 METHODS

test(I<context>, I<zone>);

=head1 EXAMPLES

    use DNSCheck::Context;
    use DNSCheck::Test::Serial;

    my $context = new DNSCheck::Context();
    DNSCheck::Test::Serial::test($context, "se");
    $context->logger->dump();

=head1 SEE ALSO

L<DNSCheck>, L<DNSCheck::Context>, L<DNSCheck::Logger>

=cut
