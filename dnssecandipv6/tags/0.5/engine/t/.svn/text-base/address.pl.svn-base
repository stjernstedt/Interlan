#!/usr/bin/perl -sw
#
# $Id$

require 5.8.0;
use warnings;
use strict;

use Test::More tests => 2;

use DNSCheck;

######################################################################

my $check = new DNSCheck();

######################################################################

ok($check->address("192.36.144.107") == 0);
ok($check->address("2a01:3f0:0:301::53") == 0);
