#!/usr/bin/perl -sw
#
# $Id: find_parent.t 261 2008-04-07 08:34:33Z jakob $

require 5.8.0;
use warnings;
use strict;

use Test::More tests => 6;

use DNSCheck::Logger;
use DNSCheck::Lookup::DNS;

######################################################################

my $logger = new DNSCheck::Logger();
my $dns = new DNSCheck::Lookup::DNS($logger);

######################################################################

ok(! $dns->find_parent("6f3899904701b0ce2835d82493c0212babf875c7", "IN"));
ok($dns->find_parent("se", "IN") eq ".");
ok($dns->find_parent("iis.se", "IN") eq "se");
ok($dns->find_parent("narnia.pp.se", "IN") eq "se");
ok($dns->find_parent("example.com", "IN") eq "com");
ok($dns->find_parent("brixtal.se", "IN") eq "se");
