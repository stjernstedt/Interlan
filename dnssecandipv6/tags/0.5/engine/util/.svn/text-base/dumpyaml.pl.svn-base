#!/usr/bin/perl
#
# $Id$

use warnings;
use strict;
use YAML qw(LoadFile Dump);
use Data::Dumper;

my $file = $ARGV[0];

my ($hashref, $arrayref, $string) = LoadFile($file);

print Dumper($hashref);
