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

package DNSCheck::Test::SMTP;

require 5.8.0;
use warnings;
use strict;

use Net::SMTP 2.29;

######################################################################

sub test {
    my $context = shift;
    my $host    = shift;
    my $email   = shift;

    my $logger = $context->logger;
    my $errors = 0;
    my $message;

    $logger->module_stack_push();
    $logger->info("SMTP:BEGIN", $host, $email);

    my $smtp = Net::SMTP->new(
        Host  => $host,
        Hello => $context->hostname
    );

    unless ($smtp) {
        $logger->error("SMTP:CONNECT_FAILED", $host);
        $errors++;
        goto DONE;
    }

    $message = $smtp->banner;
    chomp $message;
    $logger->debug("SMTP:BANNER", $message);

    unless ($smtp->status == 2) {
        $logger->error("SMTP:HELLO_FAILED");
        $errors++;
        goto DONE;
    }

    $logger->debug("SMTP:MAIL_FROM", "<>");
    $smtp->mail("<>");
    $message = $smtp->message;
    chomp $message;
    $logger->debug("SMTP:RAW", $message);

    unless ($smtp->status == 2) {
        $logger->error("SMTP:MAIL_FROM_REJECTED", "<>");
        $errors++;
        goto RESET;
    }

    # FIXME: handle timeouts?
    $logger->debug("SMTP:RCPT_TO", $email);
    $smtp->recipient($email);
    $message = $smtp->message;
    chomp $message;
    $logger->debug("SMTP:RAW", $message);

    unless ($smtp->status == 2 || $smtp->status == 4) {
        $logger->error("SMTP:RECIPIENT_REJECTED", $email);
        $errors++;
    }

  RESET:
    $logger->debug("SMTP:RSET");
    $smtp->reset;
    $message = $smtp->message;
    chomp $message;
    $logger->debug("SMTP:RAW", $message);

    $logger->debug("SMTP:QUIT");
    $smtp->quit;
    $message = $smtp->message;
    chomp $message;
    $logger->debug("SMTP:RAW", $message);

    unless ($errors) {
        $logger->info("SMTP:OK", $host, $email);
    }

  DONE:
    $logger->info("SMTP:END", $host, $email);
    $logger->module_stack_pop();

    return $errors;
}

1;

__END__


=head1 NAME

DNSCheck::Test::SMTP - Test SMTP delivery

=head1 DESCRIPTION

Test if an email address is deliverable using SMTP.

=head1 METHODS

test(I<context>, I<mailhost>, I<emailaddress>);

=head1 EXAMPLES

    use DNSCheck::Context;
    use DNSCheck::Test::SMTP;

    my $context = new DNSCheck::Context();
    DNSCheck::Test::SMTP::test($context, "mail.example.com", "user\@example.com");
    $context->logger->dump();

=head1 SEE ALSO

L<DNSCheck>, L<DNSCheck::Context>, L<DNSCheck::Logger>, L<Net::SMTP>

=cut
