#!/usr/bin/perl
#
# $Id$

require 5.8.0;
use warnings;
use strict;

use Data::Dumper;

use DNSCheck;

######################################################################

my $check = new DNSCheck({ interactive => 1 });

$check->host("forastero.schlyter.se");
$check->host("t.schlyter.se");
$check->host("ns.schlyter.se");
$check->host("ns.kirei.se");
$check->host("ns1.kirei.se");
$check->host("ns_1.kirei.se");
$check->host("ns1-.kirei.se");
$check->host("1a.KIREI.se");
$check->host("ns4..kirei.se");
$check->host("ms.365-24.se");
