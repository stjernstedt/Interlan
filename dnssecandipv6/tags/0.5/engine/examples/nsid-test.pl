#!/usr/bin/perl

use Data::Dumper;
use Net::DNS;

my $resolver = new Net::DNS::Resolver;
$resolver->nameserver("62.119.93.254");
$resolver->debug(1);

my $optrr = new Net::DNS::RR {
    name          => "",
    type          => "OPT",
    class         => 1024,
    extendedrcode => 0x00,
    ednsflags     => 0x0000,
    optioncode    => 0x03,     # NSID, RFC 5001
    optiondata    => 0x00,
};

my $query = Net::DNS::Packet->new("kirei.se", "NS", "IN");
$query->push(additional => $optrr);
$query->header->rd(0);

print Dumper($query);

my $response = $resolver->send($query);

print Dumper($response);
