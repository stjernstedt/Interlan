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

package DNSCheck::Test::Connectivity;

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
    $logger->info("CONNECTIVITY:BEGIN", $zone);

    my %as_set;
    my @nameservers = ();

    # Fetch IPv4 nameservers
    if ($context->{ipv4}) {
        my $ipv4 = $context->dns->get_nameservers_ipv4($zone, $qclass);
        push @nameservers, @{$ipv4} if ($ipv4);
    }

    # FIXME: AS lookup for IPv6 addresses

    # FIXME: test for ASN lookup failure
    foreach my $address (@nameservers) {
        my @as_list = @{ $context->asn->lookup($address) };

        foreach my $asn (@as_list) {
            $as_set{$asn} = $asn;
        }

        $logger->info("CONNECTIVITY:ANNOUNCED_BY_ASN",
            $address, join(",", @as_list));

        # REQUIRE: A name server should not be announced by more than one AS
        # REQUIRE: A name server must be announced
        if (scalar @as_list > 1) {
            $logger->warning("CONNECTIVITY:MULTIPLE_ASN", $address);
        } elsif (scalar @as_list < 1) {
            $logger->error("CONNECTIVITY:NOT_ANNOUNCED", $address);
            $errors++;
        }
    }

    $logger->info("CONNECTIVITY:ASN_LIST", join(",", keys(%as_set)));

    # REQUIRE: Domain name servers should live in more than one AS
    my $as_count = scalar keys %as_set;
    if ($as_count <= 1) {
        $logger->warning("CONNECTIVITY:TOO_FEW_ASN", $as_count);
    } else {
        $logger->info("CONNECTIVITY:ASN_COUNT_OK", $as_count);
    }

  DONE:
    $logger->info("CONNECTIVITY:END", $zone);
    $logger->module_stack_pop();

    return $errors;
}

1;

__END__


=head1 NAME

DNSCheck::Test::Connectivity - Test zone connectivity

=head1 DESCRIPTION

Test connectivity for a zone's nameservers. The following tests are made:

=over 4

=item *
A name server should not be announced by more than one AS.

=item *
A name server must be announced.

=item *
Domain name servers should live in more than one AS.

=back

=head1 METHODS

test(I<context>, I<zone>);

=head1 EXAMPLES

    use DNSCheck::Context;
    use DNSCheck::Test::Connectivity;

    my $context = new DNSCheck::Context();
    DNSCheck::Test::Connectivity::test($context, "iis.se");
    $context->logger->dump();

=head1 SEE ALSO

L<DNSCheck>, L<DNSCheck::Context>, L<DNSCheck::Logger>

=cut
