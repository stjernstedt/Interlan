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

package DNSCheck::Test::Host;

require 5.8.0;
use warnings;
use strict;

use DNSCheck::Test::Address;

######################################################################

sub test {
    my $context  = shift;
    my $hostname = shift;

    my $qclass = $context->qclass;
    my $logger = $context->logger;
    my $errors = 0;

    $logger->module_stack_push();
    $logger->info("HOST:BEGIN", $hostname);

    my @labels = split(/\./, $hostname);

    # REQUIRE: RFC 952 says first component must begin with a-z
    if (scalar @labels > 0
        && $labels[0] !~ /^[A-Za-z][A-Za-z0-9-]*$/)
    {
        $logger->error("HOST:ILLEGAL_NAME", $hostname, $labels[0]);
        $errors++;
        goto DONE;
    }

    foreach my $label (@labels) {

        # REQUIRE: RFC 952 says hostnames may contain a-z, 0-9 or -
        if ($label !~ /^[A-Za-z0-9][A-Za-z0-9-]*$/) {
            $label = "<NULL>" if ($label eq "");
            $logger->error("HOST:ILLEGAL_NAME", $hostname, $label);
            $errors++;
            goto DONE;
        }

        # REQUIRE: RFC 952 says the last character must not
        # be a minus sign or a period.
        if ($label =~ /[\-\.]$/) {
            $label = "<NULL>" if ($label eq "");
            $logger->error("HOST:ILLEGAL_NAME", $hostname, $label);
            $errors++;
            goto DONE;
        }
    }

    my $ipv4 = $context->dns->query_resolver($hostname, $qclass, "A");
    my $ipv6 = $context->dns->query_resolver($hostname, $qclass, "AAAA");

    # REQUIRE: Host address must exist
    unless (($ipv4 && $ipv4->header->ancount)
        || ($ipv6 && $ipv6->header->ancount))
    {
        $logger->error("HOST:NOT_FOUND", $hostname);
        $errors++;
        goto DONE;
    }

    my @answers = ();
    push @answers, $ipv4->answer if ($ipv4->header->ancount);
    push @answers, $ipv6->answer if ($ipv6->header->ancount);

    # REQUIRE: Host must not point to a CNAME
    foreach my $rr (@answers) {
        if ($rr->type eq "CNAME") {
            $logger->error("HOST:CNAME_FOUND", $hostname);
            $errors++;
            goto DONE;
        }
    }

    # REQUIRE: All host addresses must be valid
    foreach my $rr (@answers) {
        if ($rr->type eq "A" or $rr->type eq "AAAA") {
            DNSCheck::Test::Address::test($context, $rr->address);
        }
    }

  DONE:
    $logger->info("HOST:END", $hostname);
    $logger->module_stack_pop();

    return $errors;
}

1;

__END__


=head1 NAME

DNSCheck::Test::Host - Test host names and addresses

=head1 DESCRIPTION

Test host names and addresses. The following tests are made:

=over 4

=item *
Hostnames may contain the characters a-z, 0-9 and -.

=item *
Last character of hostname must not be a minus sign.

=item *
Host address must exist.

=item *
Hostname must nu point to a CNAME.

=item *
All host addresses (IPv4 and IPv6) must be valid.

=back

=head1 METHODS

test(I<context>, I<hostname>);

=head1 EXAMPLES

    use DNSCheck::Context;
    use DNSCheck::Test::Host;

    my $context = new DNSCheck::Context();
    DNSCheck::Test::Host::test($context, "a.ns.se");
    $context->logger->dump();

=head1 SEE ALSO

L<DNSCheck>, L<DNSCheck::Context>, L<DNSCheck::Logger>,
L<DNSCheck::Test::Address>

=cut
