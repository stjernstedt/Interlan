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

require 5.8.0;
use warnings;
use strict;

use Getopt::Long;
use Pod::Usage;
use DNSCheck;

my $LOCALE_DIR = '@@LOCALE_DIR@@';

######################################################################

sub main {
    my $help         = 0;
    my $timeout      = 2;
    my $raw          = 0;
    my $disable_ipv4 = 0;
    my $disable_ipv6 = 0;
    my $locale       = "locale/en.yaml";

    GetOptions(
        'help|?'       => \$help,
        'timeout=i'    => \$timeout,
        'raw'          => \$raw,
        'disable-ipv4' => \$disable_ipv4,
        'disable-ipv6' => \$disable_ipv6,
    ) or pod2usage(2);
    pod2usage(1) if ($help);

    my $zone = shift @ARGV;

    unless ($zone) {
        pod2usage(2);
    }

    unless (-f $locale) {
        $locale = $LOCALE_DIR . "/en.yaml";
    }

    $locale = undef if ($raw);

    my $check = new DNSCheck(
        {
            interactive  => 1,
            locale       => $locale,
            udp_timeout  => $timeout,
            tcp_timeout  => $timeout,
            disable_ipv4 => $disable_ipv4,
            disable_ipv6 => $disable_ipv6,
        }
    );

    $check->zone($zone);
}

main();

__END__

=head1 NAME

dnscheck - DNSCheck Tool

=head1 SYNOPSIS

dnscheck [options] zone

Options:

 --help                brief help message
 --raw                 raw log output, suitable for automatic processing
 --disable-ipv4        disable IPv4 transport
 --disable-ipv6        disable IPv6 transport
 --timeout=SECONDS     set UDP/TCP timeout
