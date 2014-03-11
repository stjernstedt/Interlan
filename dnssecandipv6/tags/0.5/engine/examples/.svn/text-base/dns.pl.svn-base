#!/usr/bin/perl
#
# $Id$

require 5.8.0;
use warnings;
use strict;

use Data::Dumper;

use DNSCheck::Logger;
use DNSCheck::Lookup::DNS;

######################################################################

my $logger = new DNSCheck::Logger({ interactive => 1 });
my $dns = new DNSCheck::Lookup::DNS($logger);

my $zone   = "schlyter.se";
my $domain = "ns.schlyter.se";

my $parent = $dns->query_parent($zone, $domain, "IN", "A");
my $child  = $dns->query_child($zone,  $domain, "IN", "A");

$logger->dump();

print "********** PARENT **********\n";
print Dumper($parent->authority);

print "********** CHILD **********\n";
print Dumper($child->answer);
