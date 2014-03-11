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

package DNSCheck::Test::DNSSEC;

require 5.8.0;
use warnings;
use strict;

use Net::DNS 0.59;
use Net::DNS::SEC 0.14;
use Data::Dumper;
use Date::Parse;
use POSIX qw(strftime);

######################################################################

sub test {
    my $context = shift;
    my $zone    = shift;

    my $qclass = $context->qclass;
    my $logger = $context->logger;
    my $errors = 0;
    my %flags  = (transport => "tcp", dnssec => 1);
    my $packet;

    my $ds;
    my $dnskey;

    my $child_errors;
    my $child_result;
    my $parent_errors;

    $logger->module_stack_push();
    $logger->info("DNSSEC:BEGIN", $zone);

    # Query parent for DS
    $logger->debug("DNSSEC:CHECKING_DS_AT_PARENT", $zone);
    $packet =
      $context->dns->query_parent_nocache($zone, $zone, $qclass, "DS", \%flags);
    $ds = _dissect($packet, "DS");
    if ($ds && $#{ @{ $ds->{DS} } } >= 0) {
        $logger->info("DNSSEC:DS_FOUND", $zone);
    } else {
        $logger->info("DNSSEC:NO_DS_FOUND", $zone);
    }

    # Query child for DNSKEY
    $logger->debug("DNSSEC:CHECKING_DNSKEY_AT_CHILD", $zone);
    $packet =
      $context->dns->query_child_nocache($zone, $zone, $qclass, "DNSKEY",
        \%flags);
    $dnskey = _dissect($packet, "DNSKEY");
    if ($dnskey && $#{ @{ $dnskey->{DNSKEY} } } >= 0) {
        $logger->info("DNSSEC:DNSKEY_FOUND", $zone);
    } else {
        $logger->info("DNSSEC:DNSKEY_NOT_FOUND", $zone);
    }

    # Determine security status
    $logger->debug("DNSSEC:DETERMINE_SECURITY_STATUS", $zone);
    if ($ds and !$dnskey) {
        $logger->error("DNSSEC:INCONSISTENT_SECURITY", $zone);
        $errors++;
        goto DONE;
    } else {
        $logger->info("DNSSEC:CONSISTENT_SECURITY", $zone);
    }

    if (!$dnskey) {
        $logger->info("DNSSEC:SKIPPED_NO_KEYS", $zone);
        goto DONE;
    }

    if (!$ds and $dnskey) {
        $logger->warning("DNSSEC:MISSING_DS", $zone);
        $errors++;
    }

    ($child_errors, $child_result) = _check_child($context, $zone, $dnskey);
    $errors += $child_errors;

	# Only check parent if we've found a DS
    if ($ds) {
        $parent_errors =
          _check_parent($context, $zone, $ds, $dnskey, $child_result);
        $errors += $parent_errors;
    }

  DONE:
    $logger->info("DNSSEC:END", $zone);
    $logger->module_stack_pop();
    return $errors;
}

######################################################################

sub _check_child {
    my $context = shift;
    my $zone    = shift;
    my $dnskey  = shift;

    my $qclass = $context->qclass;
    my $logger = $context->logger;
    my $errors = 0;

    my %flags = (transport => "tcp", dnssec => 1);

    my $packet;
    my %keyhash;
    my %result;

    my $mandatory_algorithm = 0;
    my $sep                 = 0;

    # initialize result set
    $result{rr}      = undef;
    $result{allkeys} = undef;
    $result{anchors} = ();
    $result{sep}     = ();

    $logger->info("DNSSEC:CHECKING_CHILD", $zone);

    foreach my $key (@{ $dnskey->{DNSKEY} }) {

        # REQUIRE: a DNSKEY SHOULD NOT be of type RSA/MD5
        if ($key->algorithm == Net::DNS::SEC->algorithm("RSAMD5")) {
            $logger->warning("DNSSEC:DNSKEY_ALGORITHM_NOT_RECOMMENDED",
                $zone, $key->keytag, "RSA/MD5");
        }

        if ($key->algorithm == Net::DNS::SEC->algorithm("RSASHA1")) {
            $mandatory_algorithm++;
        }

        # REQUIRE: a DNSKEY used for RRSIGs MUST have protocol DNSSEC (3)
        if ($key->protocol != 3) {
            $logger->warning("DNSSEC:DNSKEY_SKIP_PROTOCOL",
                $zone, $key->keytag, $key->protocol);
            next;
        }

        # REQUIRE: a DNSKEY used for RRSIGs MUST be a zone key
        unless ($key->flags & 0x0100) {
            $logger->warning("DNSSEC:DNSKEY_SKIP_TYPE", $zone, $key->keytag);
            next;
        }

        $keyhash{ $key->keytag } = $key;

        if ($key->is_sep) {
            $logger->info("DNSSEC:DNSKEY_SEP", $zone, $key->keytag);
            push @{ $result{sep} }, $key->keytag;
            $sep++;
        }
    }

    # fill result set
    $result{rr} = \%keyhash;
    @{ $result{allkeys} } = keys %keyhash;

    # REQUIRE: at least one DNSKEY SHOULD be RSA/SHA1
    if ($mandatory_algorithm > 0) {
        $logger->info("DNSSEC:DNSKEY_MANDATORY_FOUND", $zone);
    } else {
        $logger->error("DNSSEC:DNSKEY_MANDATORY_NOT_FOUND", $zone);
        $errors++;
    }

    unless ($#{ @{ $dnskey->{RRSIG} } } >= 0) {

        $packet =
          $context->dns->query_child_nocache($zone, $zone, $qclass, "RRSIG",
            \%flags);

        if (    $packet->header->rcode eq "NOERROR"
            and $packet->header->ancount > 0)
        {
            $logger->error("DNSSEC:ADDITIONAL_PROCESSING_BROKEN", $zone);
            $errors++;
        } else {
            $logger->error("DNSSEC:NO_SIGNATURES", $zone);
            $errors++;
        }

        $logger->info("DNSSEC:CHILD_CHECK_ABORTED", $zone);

        goto DONE;
    }

    # REQUIRE: RRSIG(DNSKEY) MUST be valid and created by a valid DNSKEY
    my $valid_dnskey_signatures = 0;
    foreach my $sig (@{ $dnskey->{RRSIG} }) {
        my $valid = _check_signature($context, $zone, $sig);

        push @{ $result{anchors} }, $sig->keytag;

        if (_count_in_list($sig->keytag, $result{allkeys}) == 1) {
            $valid_dnskey_signatures += $valid;

            $logger->debug("DNSSEC:DNSKEY_SIGNATURE_OK", $zone, $sig->keytag);
        } else {
            $logger->warning("DNSSEC:DNSKEY_SIGNER_UNPUBLISHED",
                $zone, $sig->keytag);
        }
    }
    if ($valid_dnskey_signatures > 0) {
        ## Enough valid signatures over DNSKEY RRset
        $logger->info("DNSSEC:DNSKEY_VALID_SIGNATURES", $zone);
    } else {
        ## No valid signatures over the DNSKEY RRset
        $logger->warning("DNSSEC:DNSKEY_NO_VALID_SIGNATURES", $zone);
    }

    # REQUIRE: RRSIG(SOA) MUST be valid and created by a valid DNSKEY
    $packet =
      $context->dns->query_child_nocache($zone, $zone, $qclass, "SOA", \%flags);
    goto DONE unless ($packet);
    my $soa = _dissect($packet, "SOA");
    my $valid_soa_signatures = 0;
    foreach my $sig (@{ $soa->{RRSIG} }) {
        my $valid = _check_signature($context, $zone, $sig);

        push @{ $result{anchors} }, $sig->keytag;

        if (_count_in_list($sig->keytag, $result{allkeys}) == 1) {
            $valid_soa_signatures += $valid;
            $logger->debug("DNSSEC:SOA_SIGNATURE_OK", $zone, $sig->keytag);
        } else {
            $logger->warning("DNSSEC:SOA_SIGNER_UNPUBLISHED",
                $zone, $sig->keytag);
        }
    }
    if ($valid_soa_signatures > 0) {
        ## Enough valid signatures over SOA RRset
        $logger->info("DNSSEC:SOA_VALID_SIGNATURES", $zone);
    } else {
        ## No valid signatures over the SOA RRset
        $logger->warning("DNSSEC:SOA_NO_VALID_SIGNATURES", $zone);
    }

    # FIXME: check signature validation?

  DONE:
    $logger->info("DNSSEC:CHILD_CHECKED", $zone);
    return ($errors, \%result);
}

######################################################################

sub _check_parent {
    my $context      = shift;
    my $zone         = shift;
    my $ds           = shift;
    my $dnskey       = shift;
    my $child_result = shift;

    my $qclass = $context->qclass;
    my $logger = $context->logger;
    my $errors = 0;

    my $mandatory_algorithm = 0;

    my %flags = (transport => "tcp", dnssec => 1);

    $logger->info("DNSSEC:CHECKING_PARENT", $zone);

    foreach my $rr (@{ $ds->{DS} }) {

        my $ds_message = sprintf("DS(%s/%d/%d/%d)",
            $zone, $rr->algorithm, $rr->digtype, $rr->keytag);

        $logger->debug("DNSSEC:PARENT_DS", $zone, $ds_message);

        if ($rr->algorithm == Net::DNS::SEC->algorithm("RSASHA1")) {
            $mandatory_algorithm++;
        }

        # REQUIRE: the DS MUST point to a DNSKEY that is
        # signing the child's DNSKEY RRset
        if (_count_in_list($rr->keytag, $child_result->{anchors}) == 1) {
            ## DS refers to key signing the DNSKEY RRset
            $logger->info("DNSSEC:DS_KEYREF_OK", $zone, $ds_message);
        } else {
            ## DS refers to key not signing the DNSKEY RRset
            $logger->info("DNSSEC:DS_KEYREF_INVALID", $zone, $ds_message);
        }

        # REQUIRE: the DS MAY point to a SEP at the child
        if ($#{ $child_result->{sep} } >= 0) {
            if (_count_in_list($rr->keytag, $child_result->{sep}) > 0) {
                ## Child is using SEP and DS refers to a SEP
                $logger->info("DNSSEC:DS_TO_SEP", $zone, $ds_message);
            } else {
                ## Child is using SEP and DS refers to a non-SEP
                $logger->warning("DNSSEC:DS_TO_NONSEP", $zone, $ds_message);
            }
        }
    }

    # REQUIRE: at least one DS algorithm SHOULD be of type RSA/SHA1
    if ($mandatory_algorithm > 0) {
        $logger->info("DNSSEC:DS_MANDATORY_FOUND", $zone);
    } else {
        $logger->error("DNSSEC:DS_MANDATORY_NOT_FOUND", $zone);
        $errors++;
    }

  DONE:
    $logger->info("DNSSEC:PARENT_CHECKED", $zone);
    return $errors;
}

######################################################################

sub _dissect {
    my $packet = shift;
    my $qtype  = shift;

    my %response = ();

    return undef unless ($packet);

    foreach my $rr ($packet->answer) {
        if (    $rr->type eq "RRSIG"
            and $qtype ne "RRSIG"
            and $rr->typecovered eq $qtype)
        {
            push @{ $response{RRSIG} }, $rr;
            next;
        }

        if ($rr->type eq $qtype) {
            push @{ $response{$qtype} }, $rr;
            next;
        }
    }

    if ($#{ $response{$qtype} } < 0) {
        return undef;
    }

    return \%response;
}

sub _check_signature ($$) {
    my $context = shift;
    my $zone    = shift;
    my $rrsig   = shift;

    my $logger = $context->logger;

    die "bad call to check_signature()" unless ($rrsig->type eq "RRSIG");

    my $now = time();

    my $inception  = _parse_timestamp($rrsig->siginception);
    my $expiration = _parse_timestamp($rrsig->sigexpiration);

    my $message = sprintf("RRSIG(%s/%s/%s/%d)",
        $rrsig->name, $rrsig->class, $rrsig->typecovered, $rrsig->keytag);

    if ($inception > $now) {
        $logger->warning("DNSSEC:RRSIG_NOT_YET_VALID", $message);
        return 0;
    } elsif ($expiration < $now) {
        $logger->warning("DNSSEC:RRSIG_EXPIRED", $message);
        return 0;
    } else {
        $logger->info("DNSSEC:RRSIG_VALID", $message);
        return 1;
    }
}

sub _parse_timestamp ($) {
    my $str = shift;

    if ($str =~ /^(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})$/) {
        return str2time("$1-$2-$3 $4:$5:$6", "GMT");
    } else {
        return undef;
    }
}

sub _count_in_list ($$) {
    my $value = shift;
    my $list  = shift;

    my $n = 0;

    foreach my $x (@{$list}) {
        $n++ if ($x == $value);
    }

    return $n;
}

1;

__END__


=head1 NAME

DNSCheck::Test::DNSSEC - Test DNSSEC

=head1 DESCRIPTION

=over 4

=item *
If there exists DS at parent, the child must use DNSSEC.

=item *
If there exists DNSKEY at child, the parent should have a DS.

=item *
A DNSSEC key should not be of type RSA/MD5.

=item *
At least one DNSKEY should be of type RSA/SHA1.

=item *
There may exist a SEP at the child.

=item *
RRSIG(DNSKEY) must be valid and created by a valid DNSKEY.

=item *
RRSIG(SOA) must be valid and created by a valid DNSKEY.

=item *
The DS must point to a DNSKEY signing the child's DNSKEY RRset.

=item *
The DS may point to a SEP at the child.

=item *
At least one DS algorithm should be of type RSA/SHA1.

=back

=head1 METHODS

test(I<context>, I<zone>);

=head1 EXAMPLES

    use DNSCheck::Context;
    use DNSCheck::Test::DNSSEC;

    my $context = new DNSCheck::Context();
    DNSCheck::Test::DNSSEC::test($context, "example.com");
    $context->logger->dump();

=head1 SEE ALSO

L<DNSCheck>, L<DNSCheck::Context>, L<DNSCheck::Logger>

=cut
