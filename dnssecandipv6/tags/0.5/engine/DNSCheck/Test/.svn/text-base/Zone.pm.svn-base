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

package DNSCheck::Test::Zone;

require 5.8.0;
use warnings;
use strict;

######################################################################

sub test {
    my $context = shift;
    my $zone    = shift;
    my $history = shift;

    my $qclass = $context->qclass;
    my $logger = $context->logger;

    $logger->logname($zone);

    $logger->module_stack_push();
    $logger->info("ZONE:BEGIN", $zone);

	my ($errors,$testable) = DNSCheck::Test::Delegation::test($context, $zone, $history);

	unless ($testable) {
	    $logger->critical("ZONE:FATAL", $zone);
		goto DONE;
	}

    foreach my $ns ($context->dns->get_nameservers_at_child($zone, $qclass)) {
        $errors += DNSCheck::Test::Nameserver::test($context, $zone, $ns);
    }

    $errors += DNSCheck::Test::Serial::test($context, $zone);
    $errors += DNSCheck::Test::SOA::test($context, $zone);
    $errors += DNSCheck::Test::Connectivity::test($context, $zone);
    $errors += DNSCheck::Test::DNSSEC::test($context, $zone);

  DONE:
    $logger->info("ZONE:END", $zone);
    $logger->module_stack_pop();

    return $errors;
}

1;

__END__


=head1 NAME

DNSCheck::Test::Zone - Test a zone

=head1 DESCRIPTION

Test a zone using all DNSCheck modules.

=head1 METHODS

test(I<context>, I<zone>);

=head1 EXAMPLES

    use DNSCheck::Context;
    use DNSCheck::Test::Zone;

    my $context = new DNSCheck::Context();
    DNSCheck::Test::Zone::test($context, "example.com");
    $context->logger->dump();

=head1 SEE ALSO

L<DNSCheck>, L<DNSCheck::Context>, L<DNSCheck::Logger>,
L<DNSCheck::Test::Delegation>, L<DNSCheck::Test::Nameserver>,
L<DNSCheck::Test::Serial>, L<DNSCheck::Test::SOA>,
L<DNSCheck::Test::Connectivity>, L<DNSCheck::Test::DNSSEC>

=cut
