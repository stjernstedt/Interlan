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

package DNSCheck::Lookup::DNS;

require 5.8.0;
use warnings;
use strict;

use List::Util 'shuffle';

use Data::Dumper;
use Net::DNS 0.59;

use Crypt::OpenSSL::Random qw(random_bytes);
use Digest::SHA1 qw(sha1);
use Digest::BubbleBabble qw(bubblebabble);

######################################################################

sub new {
    my $proto = shift;
    my $class = ref($proto) || $proto;
    my $self  = {};

    $self->{logger} = shift;
    my $config = shift;

    $self->{debug} = $config->{debug};

    if ($config->{debug} && $config->{debug} >= 2) {
        $self->{debug_resolver} = 1;
    } else {
        $self->{debug_resolver} = 0;
    }

    # hash PACKET at resolver indexed by QNAME,QTYPE,QCLASS
    $self->{cache}{resolver} = ();

    # hash PACKET at parent indexed by QNAME,QTYPE,QCLASS
    $self->{cache}{parent} = ();

    # hash PACKET at child indexed by QNAME,QTYPE,QCLASS
    $self->{cache}{child} = ();

    # hash of NAMESERVERS index QNAME,QCLASS,PROTOCOL
    $self->{nameservers} = ();

    # hash of PARENT indexed by CHILD,QCLASS
    $self->{parent} = ();

    # hash of SOMETHING indexed by ADDRESSES
    $self->{blacklist} = ();

    # default parameters
    if ($config->{udp_timeout}) {
        $self->{default}{udp_timeout} = $config->{udp_timeout};
    } else {
        $self->{default}{udp_timeout} = undef;
    }
    if ($config->{tcp_timeout}) {
        $self->{default}{tcp_timeout} = $config->{tcp_timeout};
    } else {
        $self->{default}{tcp_timeout} = 10;
    }
    if ($config->{retry}) {
        $self->{default}{retry} = $config->{retry};
    } else {
        $self->{default}{retry} = 3;
    }
    if ($config->{retrans}) {
        $self->{default}{retrans} = $config->{retrans};
    } else {
        $self->{default}{retrans} = 2;
    }

    # set up global resolver
    $self->{resolver} = new Net::DNS::Resolver;
    $self->{resolver}->persistent_tcp(0);
    $self->{resolver}->cdflag(1);
    $self->{resolver}->debug($self->{debug_resolver});
    $self->{resolver}->udp_timeout($self->{default}{udp_timeout});
    $self->{resolver}->tcp_timeout($self->{default}{tcp_timeout});
    $self->{resolver}->retry($self->{default}{retry});
    $self->{resolver}->retrans($self->{default}{retrans});

    bless $self, $class;
}

sub DESTROY {

}

######################################################################

sub query_resolver {
    my $self   = shift;
    my $qname  = shift;
    my $qclass = shift;
    my $qtype  = shift;

    $self->{logger}->debug("DNS:QUERY_RESOLVER", $qname, $qclass, $qtype);

    unless ($self->{cache}{resolver}{$qname}{$qclass}{$qtype}) {
        $self->{cache}{resolver}{$qname}{$qclass}{$qtype} =
          $self->{resolver}->send($qname, $qtype, $qclass);

        if ($self->check_timeout($self->{resolver})) {
            $self->{logger}
              ->debug("DNS:RESOLVER_QUERY_TIMEOUT", $qname, $qclass, $qtype);
            return undef;
        }
    }

    my $packet = $self->{cache}{resolver}{$qname}{$qclass}{$qtype};

    if ($packet) {
        $self->{logger}->debug("DNS:RESOLVER_RESPONSE",
            sprintf("%d answer(s)", $packet->header->ancount));
    }

    return $packet;
}

######################################################################

sub query_parent {
    my $self   = shift;
    my $zone   = shift;
    my $qname  = shift;
    my $qclass = shift;
    my $qtype  = shift;

    $self->{logger}->debug("DNS:QUERY_PARENT", $zone, $qname, $qclass, $qtype);

    unless ($self->{cache}{parent}{$zone}{$qname}{$qclass}{$qtype}) {
        $self->{cache}{parent}{$zone}{$qname}{$qclass}{$qtype} =
          $self->query_parent_nocache($zone, $qname, $qclass, $qtype);
    }

    my $packet = $self->{cache}{parent}{$zone}{$qname}{$qclass}{$qtype};

    if ($packet) {
        $self->{logger}->debug(
            "DNS:PARENT_RESPONSE",
            sprintf(
                "%d answer(s), %d authority",
                $packet->header->ancount, $packet->header->nscount
            )
        );
    }

    return $packet;
}

sub query_parent_nocache {
    my $self   = shift;
    my $zone   = shift;
    my $qname  = shift;
    my $qclass = shift;
    my $qtype  = shift;
    my $flags  = shift;

    $self->{logger}
      ->debug("DNS:QUERY_PARENT_NOCACHE", $zone, $qname, $qclass, $qtype);

    # find parent
    $self->{logger}->debug("DNS:FIND_PARENT", $zone, $qclass);
    my $parent = $self->find_parent($zone, $qclass);
    unless ($parent) {
        $self->{logger}->error("DNS:NO_PARENT", $zone, $qclass);
        return undef;
    } else {
        $self->{logger}->debug("DNS:PARENT_OF", $parent, $zone, $qclass);
    }

    # initialize parent nameservers
    $self->init_nameservers($parent, $qclass);

    # find parent to query
    my $ipv4 = $self->get_nameservers_ipv4($parent, $qclass);
    my $ipv6 = $self->get_nameservers_ipv6($parent, $qclass);
    my @target = ();
    @target = (@target, @{$ipv4}) if ($ipv4);
    @target = (@target, @{$ipv6}) if ($ipv6);
    unless (scalar @target) {
        $self->{logger}->error("DNS:NO_PARENT_NS", $parent, $zone, $qclass);
        return undef;
    }

    # randomize name server addresses
    @target = shuffle(@target);

    return $self->_query_multiple($qname, $qclass, $qtype, $flags, @target);
}

######################################################################

sub query_child {
    my $self   = shift;
    my $zone   = shift;
    my $qname  = shift;
    my $qclass = shift;
    my $qtype  = shift;

    $self->{logger}->debug("DNS:QUERY_CHILD", $zone, $qname, $qclass, $qtype);

    unless ($self->{cache}{child}{$zone}{$qname}{$qclass}{$qtype}) {
        $self->{cache}{child}{$zone}{$qname}{$qclass}{$qtype} =
          $self->query_child_nocache($zone, $qname, $qclass, $qtype);
    }

    my $packet = $self->{cache}{child}{$zone}{$qname}{$qclass}{$qtype};

    if ($packet) {
        $self->{logger}->debug("DNS:CHILD_RESPONSE",
            sprintf("%d answer(s)", $packet->header->ancount));
    }

    return $packet;
}

sub query_child_nocache {
    my $self   = shift;
    my $zone   = shift;
    my $qname  = shift;
    my $qclass = shift;
    my $qtype  = shift;
    my $flags  = shift;

    $self->{logger}
      ->debug("DNS:QUERY_CHILD_NOCACHE", $zone, $qname, $qclass, $qtype);

    # initialize child nameservers
    $self->init_nameservers($zone, $qclass);

    # find child to query
    my $ipv4 = $self->get_nameservers_ipv4($zone, $qclass);
    my $ipv6 = $self->get_nameservers_ipv6($zone, $qclass);
    my @target = ();
    @target = (@target, @{$ipv4}) if ($ipv4);
    @target = (@target, @{$ipv6}) if ($ipv6);
    unless (scalar @target) {
        $self->{logger}->error("DNS:NO_CHILD_NS", $zone, $qclass);
        return undef;
    }

    # randomize name server addresses
    @target = shuffle(@target);

    return $self->_query_multiple($qname, $qclass, $qtype, $flags, @target);
}

######################################################################

sub query_explicit {
    my $self    = shift;
    my $qname   = shift;
    my $qclass  = shift;
    my $qtype   = shift;
    my $address = shift;
    my $flags   = shift;

    $self->{logger}
      ->debug("DNS:QUERY_EXPLICIT", $address, $qname, $qclass, $qtype);

    my $resolver = $self->_setup_resolver($flags);
    $resolver->nameserver($address);

    if ($self->check_blacklist($address, $qname, $qclass, $qtype)) {
        $self->{logger}
          ->debug("DNS:ADDRESS_BLACKLISTED", $address, $qname, $qclass, $qtype);
        return undef;
    }
    my $packet = $resolver->send($qname, $qtype, $qclass);
    if ($self->check_timeout($resolver)) {
        $self->{logger}
          ->debug("DNS:QUERY_TIMEOUT", $address, $qname, $qclass, $qtype);
        $self->add_blacklist($address, $qname, $qclass, $qtype);
        $self->{logger}->debug("DNS:ADDRESS_BLACKLIST_ADD",
            $address, $qname, $qclass, $qtype);
        return undef;
    }

    unless ($packet) {
        $self->{logger}->critical("DNS:LOOKUP_ERROR", $resolver->errorstring);
        return undef;
    }

    # FIXME: improve; see RFC 2671 section 5.3
    if ($packet->header->rcode eq "FORMERR"
        && ($flags->{bufsize} || $flags->{dnssec}))
    {
        $self->{logger}->error("DNS:NO_EDNS", $address);
        return undef;
    }

    # FIXME: improve; see RFC 2671 section 5.3
    if ($packet->header->rcode eq "FORMERR") {
        $self->{logger}->notice("DNS:LOOKUP_ERROR", $resolver->errorstring);
        return undef;
    }

    # FIXME: notice, warning, error?
    if ($packet->header->rcode ne "NOERROR") {
        $self->{logger}
          ->notice("DNS:NO_ANSWER", $address, $qname, $qclass, $qtype);
        return undef;
    }

    unless ($packet->header->aa) {
        $self->{logger}
          ->debug("DNS:NOT_AUTH", $address, $qname, $qclass, $qtype);
        return undef;
    }

    $self->{logger}->debug("DNS:EXPLICIT_RESPONSE",
        sprintf("%d answer(s)", $packet->header->ancount));

    foreach my $rr ($packet->answer) {
        $self->{logger}->debug("DNS:ANSWER_DUMP", _rr2string($rr));
    }

    return $packet;
}

######################################################################

sub _query_multiple {
    my $self   = shift;
    my $qname  = shift;
    my $qclass = shift;
    my $qtype  = shift;
    my $flags  = shift;
    my @target = @_;

    # set up resolver
    my $resolver = $self->_setup_resolver($flags);

    my $packet  = undef;
    my $timeout = 0;

    for my $ns (@target) {
        $resolver->nameserver($ns);
        $packet = $resolver->send($qname, $qtype, $qclass);

        last if ($packet);

        if ($self->check_timeout($resolver)) {
            $timeout++;
        }
    }

    unless ($packet) {
        if ($timeout) {
            $self->{logger}->debug("DNS:QUERY_TIMEOUT", join(",", @target),
                $qname, $qclass, $qtype);
        } else {
            $self->{logger}
              ->critical("DNS:LOOKUP_ERROR", $resolver->errorstring);
        }
    }

    return $packet;
}

######################################################################

sub _setup_resolver {
    my $self  = shift;
    my $flags = shift;

    $self->{logger}->debug("DNS:SETUP_RESOLVER");

    # set up resolver
    my $resolver = new Net::DNS::Resolver;

    $resolver->debug($self->{debug_resolver});
    $resolver->udp_timeout($self->{default}{udp_timeout});
    $resolver->tcp_timeout($self->{default}{tcp_timeout});
    $resolver->retry($self->{default}{retry});
    $resolver->retrans($self->{default}{retrans});

    $resolver->recurse(0);
    $resolver->dnssec(0);
    $resolver->cdflag(1);
    $resolver->usevc(0);
    $resolver->defnames(0);

    if ($flags) {
        if ($flags->{transport} eq "udp") {
            $resolver->usevc(0);
        } elsif ($flags->{transport} eq "tcp") {
            $resolver->usevc(1);
        } else {
            die "unknown transport";
        }

        if ($flags->{recurse}) {
            $resolver->recurse(1);
        }

        if ($flags->{dnssec}) {
            $resolver->dnssec(1);
        }

        if ($flags->{transport} eq "udp" && $flags->{bufsize}) {
            $self->{logger}->debug("DNS:SET_BUFSIZE", $flags->{bufsize});
            $resolver->udppacketsize($flags->{bufsize});
        }
    }

    if ($resolver->usevc) {
        $self->{logger}->debug("DNS:TRANSPORT_TCP");
    } else {
        $self->{logger}->debug("DNS:TRANSPORT_UDP");
    }

    if ($resolver->recurse) {
        $self->{logger}->debug("DNS:RECURSION_DESIRED");
    } else {
        $self->{logger}->debug("DNS:RECURSION_DISABLED");
    }

    if ($resolver->dnssec) {
        $self->{logger}->debug("DNS:DNSSEC_DESIRED");
    } else {
        $self->{logger}->debug("DNS:DNSSEC_DISABLED");
    }

    return $resolver;
}

######################################################################

sub get_nameservers_ipv4 {
    my $self   = shift;
    my $qname  = shift;
    my $qclass = shift;

    $self->init_nameservers($qname, $qclass);

    return $self->{nameservers}{$qname}{$qclass}{ipv4};
}

sub get_nameservers_ipv6 {
    my $self   = shift;
    my $qname  = shift;
    my $qclass = shift;

    $self->init_nameservers($qname, $qclass);

    return $self->{nameservers}{$qname}{$qclass}{ipv6};
}

sub get_nameservers_at_parent {
    my $self   = shift;
    my $qname  = shift;
    my $qclass = shift;

    my @ns;

    $self->{logger}->debug("DNS:GET_NS_AT_PARENT", $qname, $qclass);

    my $packet = $self->query_parent($qname, $qname, $qclass, "NS");

    return undef unless ($packet);

    if ($packet->authority > 0) {
        foreach my $rr ($packet->authority) {
            if ($rr->type eq "NS") {
                push @ns, $rr->nsdname;
            }
        }
    } else {
        foreach my $rr ($packet->answer) {
            if ($rr->type eq "NS") {
                push @ns, $rr->nsdname;
            }
        }
    }

    return sort(@ns);
}

sub get_nameservers_at_child {
    my $self   = shift;
    my $qname  = shift;
    my $qclass = shift;

    my @ns;

    $self->{logger}->debug("DNS:GET_NS_AT_CHILD", $qname, $qclass);

    my $packet = $self->query_child($qname, $qname, $qclass, "NS");

    return undef unless ($packet);

    foreach my $rr ($packet->answer) {
        if ($rr->type eq "NS") {
            push @ns, $rr->nsdname;
        }
    }

    return sort(@ns);
}

######################################################################

sub init_nameservers {
    my $self   = shift;
    my $qname  = shift;
    my $qclass = shift;

    unless ($self->{nameservers}{$qname}{$qclass}{ns}) {
        $self->_init_nameservers_helper($qname, $qclass);
    }
}

sub _init_nameservers_helper {
    my $self   = shift;
    my $qname  = shift;
    my $qclass = shift;

    $self->{logger}->debug("DNS:INITIALIZING_NAMESERVERS", $qname, $qclass);

    $self->{nameservers}{$qname}{$qclass}{ns}   = ();
    $self->{nameservers}{$qname}{$qclass}{ipv4} = ();
    $self->{nameservers}{$qname}{$qclass}{ipv6} = ();

    # Lookup name servers
    my $ns = $self->query_resolver($qname, $qclass, "NS");

    # If we cannot find any nameservers, we're done
    goto DONE unless ($ns);

    foreach my $rr ($ns->answer) {
        if ($rr->type eq "NS") {
            push @{ $self->{nameservers}{$qname}{$qclass}{ns} }, $rr->nsdname;
        }
    }

    foreach my $ns (@{ $self->{nameservers}{$qname}{$qclass}{ns} }) {

        # Lookup IPv4 addresses for name servers
        my $ipv4 = $self->query_resolver($ns, $qclass, "A");
        foreach my $rr ($ipv4->answer) {
            if ($rr->type eq "A") {
                push @{ $self->{nameservers}{$qname}{$qclass}{ipv4} },
                  $rr->address;
                $self->{logger}
                  ->debug("DNS:NAMESERVER_FOUND", $qname, $qclass, $rr->name,
                    $rr->address);
            }
        }

        # Lookup IPv6 addresses for name servers
        my $ipv6 = $self->query_resolver($ns, $qclass, "AAAA");
        foreach my $rr ($ipv6->answer) {
            if ($rr->type eq "AAAA") {
                push @{ $self->{nameservers}{$qname}{$qclass}{ipv6} },
                  $rr->address;
                $self->{logger}
                  ->debug("DNS:NAMESERVER_FOUND", $qname, $qclass, $rr->name,
                    $rr->address);
            }
        }
    }

  DONE:
    $self->{logger}->debug("DNS:NAMESERVERS_INITIALIZED", $qname, $qclass);
}

######################################################################

sub find_parent {
    my $self   = shift;
    my $qname  = shift;
    my $qclass = shift;

    unless ($self->{parent}{$qname}{$qclass}) {
        $self->{parent}{$qname}{$qclass} =
          $self->_find_parent_helper($qname, $qclass);
    }

    my $parent = $self->{parent}{$qname}{$qclass};

    return $parent;
}

sub _find_parent_helper {
    my $self   = shift;
    my $qname  = shift;
    my $qclass = shift;

    my $parent = undef;

    $self->{logger}->debug("DNS:FIND_PARENT_BEGIN", $qname, $qclass);

    # start by finding the SOA for the qname
    my $try = $self->_find_soa($qname, $qclass);

    # if we get an NXDOMAIN back, we're done
    unless ($try) {
        goto DONE;
    }

    $self->{logger}->debug("DNS:FIND_PARENT_DOMAIN", $try);

    my @labels = split(/\./, $try);

    do {
        shift @labels;
        $try = join(".", @labels);
        $try = "." if ($try eq "");

        $self->{logger}->debug("DNS:FIND_PARENT_TRY", $try);

        $parent = $self->_find_soa($try, $qclass);

        # if we get an NXDOMAIN back, we're done
        goto DONE unless ($parent);

        $self->{logger}->debug("DNS:FIND_PARENT_UPPER", $parent);

        goto DONE if ($try eq $parent);
    } while ($#labels > 0);

    $parent = $try;

  DONE:
    if ($parent) {
        $self->{logger}
          ->debug("DNS:FIND_PARENT_RESULT", $parent, $qname, $qclass);
    } else {
        $self->{logger}->error("DNS:NXDOMAIN", $qname, $qclass);
    }

    return $parent;
}

sub _find_soa {
    my $self   = shift;
    my $qname  = shift;
    my $qclass = shift;

    my $answer = $self->{resolver}->send($qname, "SOA", $qclass);

    return $qname unless ($answer);
    return undef if ($answer->header->rcode eq "NXDOMAIN");

    foreach my $rr ($answer->authority) {
        return $rr->name if ($rr->type eq "SOA");
    }

    return $qname;
}

######################################################################

sub find_mx {
    my $self   = shift;
    my $domain = shift;

    my $packet;
    my @dest = ();

    $self->{logger}->debug("DNS:FIND_MX_BEGIN", $domain);

    $packet = $self->query_resolver($domain, "MX", "IN");
    if ($packet->header->ancount > 0) {
        foreach my $rr ($packet->answer) {
            if ($rr->type eq "MX") {
                push @dest, $rr->exchange;
            }
        }
        goto DONE if (scalar @dest);
    }

    $packet = $self->query_resolver($domain, "A", "IN");
    if ($packet->header->ancount > 0) {
        foreach my $rr ($packet->answer) {
            if ($rr->type eq "A") {
                push @dest, $domain;
                goto DONE;
            }
        }
    }

    $packet = $self->query_resolver($domain, "AAAA", "IN");
    if ($packet->header->ancount > 0) {
        foreach my $rr ($packet->answer) {
            if ($rr->type eq "AAAA") {
                push @dest, $domain;
                goto DONE;
            }
        }
    }

  DONE:
    $self->{logger}->debug("DNS:FIND_MX_RESULT", $domain, join(",", @dest));

    return @dest;
}

sub find_addresses {
    my $self   = shift;
    my $qname  = shift;
    my $qclass = shift;

    my @addresses = ();

    $self->{logger}->debug("DNS:FIND_ADDRESSES", $qname, $qclass);

    my $ipv4 = $self->query_resolver($qname, $qclass, "A");
    my $ipv6 = $self->query_resolver($qname, $qclass, "AAAA");

    unless ($ipv4 && $ipv6) {
        ## FIXME: error
        goto DONE;
    }

    unless (($ipv4 && $ipv4->header->ancount)
        || ($ipv6 && $ipv6->header->ancount))
    {
        ## FIXME: error
        goto DONE;
    }

    my @answers = ();
    push @answers, $ipv4->answer if ($ipv4->header->ancount);
    push @answers, $ipv6->answer if ($ipv6->header->ancount);

    foreach my $rr (@answers) {
        if ($rr->type eq "A" or $rr->type eq "AAAA") {
            push @addresses, $rr->address;
        }
    }

  DONE:
    $self->{logger}->debug("DNS:FIND_ADDRESSES_RESULT", $qname, $qclass,
        join(",", @addresses));

    return @addresses;
}

######################################################################

sub address_is_authoritative {
    my $self    = shift;
    my $address = shift;
    my $qname   = shift;
    my $qclass  = shift;

    my $logger = $self->{logger};
    my $errors = 0;

    my $packet = $self->query_explicit($qname, $qclass, "SOA", $address);

    ## timeout is not considered an error
    if ($packet && $packet->header->ancount == 0) {
        $errors++;
    }

  DONE:
    return $errors;
}

sub address_is_recursive {
    my $self    = shift;
    my $address = shift;
    my $qclass  = shift;

    my $logger = $self->{logger};
    my $errors = 0;

    # no blacklisting here, since some nameservers ignore recursive queries

    my $resolver = new Net::DNS::Resolver;
    $resolver->debug($self->{debug});

    $resolver->udp_timeout($self->{default}{udp_timeout});
    $resolver->tcp_timeout($self->{default}{tcp_timeout});
    $resolver->retry($self->{default}{retry});
    $resolver->retrans($self->{default}{retrans});

    $resolver->recurse(1);
    $resolver->cdflag(1);
    $resolver->nameserver($address);

    # create nonexisting domain name
    my $nxdomain = "nxdomain.example.com";
    my @tmp = split(/-/, bubblebabble(Digest => sha1(random_bytes(64))));
    my $nonexisting = sprintf("%s.%s", join("", @tmp[1 .. 6]), $nxdomain);

    my $qtype = "SOA";
    my $packet = $resolver->send($nonexisting, $qtype, $qclass);
    if ($self->check_timeout($resolver)) {
        $self->{logger}
          ->debug("DNS:QUERY_TIMEOUT", $address, $nonexisting, $qclass, $qtype);
        goto DONE;
    }

    goto DONE unless $packet;

    ## refused and servfail is ok
    goto DONE if ($packet->header->rcode eq "REFUSED");
    goto DONE if ($packet->header->rcode eq "SERVFAIL");

    ## referral is ok
    goto DONE
      if (  $packet->header->rcode eq "NOERROR"
        and $packet->header->ancount == 0
        and $packet->header->nscount > 0);

    $errors++;

  DONE:
    return $errors;
}

######################################################################

sub check_axfr {
    my $self       = shift;
    my $nameserver = shift;
    my $qname      = shift;
    my $qclass     = shift;

    # set up resolver
    my $resolver = new Net::DNS::Resolver;
    $resolver->debug($self->{debug});
    $resolver->recurse(0);
    $resolver->dnssec(0);
    $resolver->usevc(0);
    $resolver->defnames(0);

    $resolver->nameservers($nameserver);
    $resolver->axfr_start($qname, $qclass);

    if ($resolver->axfr_next) {
        return 1;
    }

    return 0;
}

######################################################################

sub query_nsid {
    my $self       = shift;
    my $nameserver = shift;
    my $qname      = shift;
    my $qclass     = shift;
    my $qtype      = shift;

    my $resolver = $self->_setup_resolver();
    $resolver->nameservers($nameserver);

    $resolver->debug(1);

    my $optrr = new Net::DNS::RR {
        name          => "",
        type          => "OPT",
        class         => 1024,
        extendedrcode => 0x00,
        ednsflags     => 0x0000,
        optioncode    => 0x03,
        optiondata    => 0x00,
    };

    print Dumper($optrr);

    my $query = Net::DNS::Packet->new($qname, $qtype, $qclass);
    $query->push(additional => $optrr);
    $query->header->rd(0);
    $query->{'optadded'} = 1;

    print Dumper($query);

    my $response = $resolver->send($query);

    # FIXME: incomplete implementation

    return undef;
}

######################################################################

sub _rr2string {
    my $rr = shift;
    my $rdatastr;

    if ($rr->type eq "SOA") {
        $rdatastr = sprintf(
            "%s %s %d %d %d %d %d",
            $rr->mname, $rr->rname,  $rr->serial, $rr->refresh,
            $rr->retry, $rr->expire, $rr->minimum
        );
    } elsif ($rr->type eq "DS") {
        $rdatastr = sprintf("%d %d %d %s",
            $rr->keytag, $rr->algorithm, $rr->digtype, $rr->digest);
    } elsif ($rr->type eq "RRSIG") {
        $rdatastr = sprintf(
            "%s %d %d %d %s %s %d %s %s",
            $rr->typecovered, $rr->algorithm,     $rr->labels,
            $rr->orgttl,      $rr->sigexpiration, $rr->siginception,
            $rr->keytag,      $rr->signame,       "..."
        );
    } elsif ($rr->type eq "DNSKEY") {
        $rdatastr = sprintf("%d %d %d %s",
            $rr->flags, $rr->protocol, $rr->algorithm, "...");
    } else {
        $rdatastr = $rr->rdatastr;
    }

    return sprintf("%s %d %s %s %s",
        $rr->name, $rr->ttl, $rr->class, $rr->type, $rdatastr);
}

######################################################################

sub clear_blacklist {
    my $self = shift;

    $self->{blacklist} = ();
}

sub add_blacklist {
    my $self   = shift;
    my $qaddr  = shift;
    my $qname  = shift;
    my $qclass = shift;
    my $qtype  = shift;

    $self->{blacklist}{$qaddr}{$qname}{$qclass}{$qtype} = 1;
}

sub check_blacklist {
    my $self   = shift;
    my $qaddr  = shift;
    my $qname  = shift;
    my $qclass = shift;
    my $qtype  = shift;

    return 1 if ($self->{blacklist}{$qaddr}{$qname}{$qclass}{$qtype});
    return 0;
}

sub check_timeout {
    my $self = shift;
    my $res  = shift;

    return 1 if ($res->errorstring eq "query timed out");
    return 0;
}

######################################################################

1;

__END__


=head1 NAME

DNSCheck::Lookup::DNS - DNS Lookup

=head1 DESCRIPTION

Helper functions for looking up information in the DNS (Domain Name System).

=head1 METHODS

new(I<logger>);

my $packet = $dns->query_resolver(I<qname>, I<qclass>, I<qtype>);

my $packet = $dns->query_parent(I<zone>, I<qname>, I<qclass>, I<qtype>);

my $packet = $dns->query_child(I<zone>, I<qname>, I<qclass>, I<qtype>);

my $packet = $dns->query_explicit(I<qname>, I<qclass>, I<qtype>, I<address>, I<flags>);

my $addrs = $dns->get_nameservers_ipv4(I<qname>, I<qclass>);

my $addrs = $dns->get_nameservers_ipv6(I<qname>, I<qclass>);

my $ns = $dns->get_nameservers_at_parent(I<qname>, I<qclass>);

my $ns = $dns->get_nameservers_at_child(I<qname>, I<qclass>);

$dns->init_nameservers(I<qname>, I<qclass>);

my $parent = $dns->find_parent(I<qname>, I<qclass>);

my @mx = $dns->find_mail_destination(I<domain>);

my @addresses = $dns->find_addresses(I<qname>, I<qclass>);

my $bool = $dns->address_is_authoritative(I<address>, I<qname>, I<qtype>);

my $bool = $dns->address_is_recursive(I<address>, I<qclass>);

my $bool = $dns->check_axfr(I<address>, I<qname>, I<qclass>);

my $string = $dns->query_nsid(I<address>, I<qname>, I<qclass>, I<qtype>);


=head1 EXAMPLES

    use DNSCheck::Logger;
    use DNSCheck::Lookup::DNS;

    my $logger = new DNSCheck::Logger;
    my $dns    = new DNSCheck::Lookup::DNS($logger);

    my $parent = $dns->query_parent("nic.se", "ns.nic.se", "IN", "A");

    $logger->dump();

=head1 SEE ALSO

L<DNSCheck::Logger>, L<DNSCheck::Lookup::DNS>

=cut
