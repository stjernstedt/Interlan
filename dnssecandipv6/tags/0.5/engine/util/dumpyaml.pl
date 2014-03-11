#!/usr/bin/perl
#
# $Id: dumpyaml.pl 136 2007-12-28 09:15:46Z jakob $

use warnings;
use strict;
use YAML qw(LoadFile Dump);
use Data::Dumper;

my $file = $ARGV[0];

my ($hashref, $arrayref, $string) = LoadFile($file);

print Dumper($hashref);
