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

package DNSCheck::Test::Mail;

require 5.8.0;
use warnings;
use strict;

use DNSCheck::Test::Host;
use DNSCheck::Test::SMTP;

######################################################################

sub test {
    my $context = shift;
    my $email   = shift;

    my $logger = $context->logger;
    my $errors = 0;

    $logger->module_stack_push();
    $logger->info("MAIL:BEGIN", $email);

    my ($localpart, $domain) = split(/@/, $email);

	# FIXME: stricter checks needed here
    unless ($localpart && $domain) {
        $logger->error("MAIL:ADDRESS_SYNTAX", $email);
        $errors++;
        goto DONE;
    }

    # REQUIRE: MX or A must exist for domain
    my @mailhosts = $context->dns->find_mx($domain);

    if (@mailhosts) {
        $logger->info("MAIL:MAIL_EXCHANGER", $email, join(",", @mailhosts));
    }

    unless (scalar @mailhosts) {
        $logger->error("MAIL:DOMAIN_NOT_FOUND", $domain);
        $errors++;
        goto DONE;
    }

    # REQUIRE: MX points to valid hostname
    foreach my $hostname (@mailhosts) {
        if (DNSCheck::Test::Host::test($context, $hostname) > 0) {
            $logger->error("MAIL:HOST_ERROR", $hostname);
            $errors++;
            goto DONE;
        }

        my $ipv4 = $context->dns->query_resolver($hostname, "IN", "A");
        my $ipv6 = $context->dns->query_resolver($hostname, "IN", "AAAA");

        # REQUIRE: Warn if a mail exchanger is reachable by IPv6 only
        if (   ($ipv4 && $ipv4->header->ancount == 0)
            && ($ipv6 && $ipv6->header->ancount > 0))
        {
            $logger->warning("MAIL:IPV6_ONLY", $hostname);
        }

        foreach my $rr ($ipv4->answer) {
            next unless ($rr->type eq "A");
            if (DNSCheck::Test::SMTP::test($context, $rr->address, $email)) {
                $errors++;
            }
        }

        foreach my $rr ($ipv6->answer) {
            next unless ($rr->type eq "AAAA");

            # FIXME: Do not connect to IPv6 hosts for now
            #if (DNSCheck::Test::SMTP::test($context, $rr->address, $email)) {
            #    $errors++;
            #}
        }
    }

  DONE:
    $logger->info("MAIL:END", $email);
    $logger->module_stack_pop();

    return $errors;
}

1;

__END__


=head1 NAME

DNSCheck::Test::Mail - Test email addresses

=head1 DESCRIPTION

Test email address. The following tests are made:

=over 4

=item *
An MX or A record must exist for the domain name of the email address.

=item *
The MX record must point to a valid hostname.

=item *
The mail exchanger should be reachable by IPv4.

=item *
Mail for the email address must be deliverable via SMTP.

=back

=head1 METHODS

test(I<context>, I<emailaddress>);

=head1 EXAMPLES

    use DNSCheck::Context;
    use DNSCheck::Test::Mail;

    my $context = new DNSCheck::Context();
    DNSCheck::Test::Mail::test($context, "hostmaster\@example.com");
    $context->logger->dump();

=head1 SEE ALSO

L<DNSCheck>, L<DNSCheck::Context>, L<DNSCheck::Logger>,
L<DNSCheck::Test::Host>, L<DNSCheck::Test::SMTP>

=cut
