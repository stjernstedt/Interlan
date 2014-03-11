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

package DNSCheck::Context;

require 5.8.0;
use warnings;
use strict;

use DNSCheck::Logger;
use DNSCheck::Lookup::DNS;
use DNSCheck::Lookup::ASN;

######################################################################

sub new {
    my $proto = shift;
    my $class = ref($proto) || $proto;
    my $self  = {};

    my $config = shift;

    if ($config->{class}) {
        $self->{qclass} = $config->{class};
    } else {
        $self->{qclass} = "IN";
    }

	$self->{ipv4} = 1;
	$self->{ipv6} = 1;
	
    $self->{ipv4} = 0 if ($config->{disable_ipv4});
    $self->{ipv6} = 0 if ($config->{disable_ipv6});	

    # FIXME: perhaps do this some other way
    $self->{hostname} = `hostname`;

    $self->{logger} = new DNSCheck::Logger($config);
    $self->{dns}    = new DNSCheck::Lookup::DNS($self->{logger}, $config);
    $self->{asn}    = new DNSCheck::Lookup::ASN($self->{logger}, $self->{dns});

    bless $self, $class;
}

sub hostname {
    my $self = shift;
    return $self->{hostname};
}

sub dns {
    my $self = shift;
    return $self->{dns};
}

sub asn {
    my $self = shift;
    return $self->{asn};
}

sub logger {
    my $self = shift;
    return $self->{logger};
}

sub qclass {
    my $self = shift;
    return $self->{qclass};
}

1;

__END__
