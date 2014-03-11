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

die "syntax error" unless ($ARGV[0]);

my @history =
  ("ns.kirei.se", "ns.schlyter.se", "ns1.pin.se", "ns2.pin.se", "ns3.pin.se");

$check->delegation($ARGV[0], \@history);
