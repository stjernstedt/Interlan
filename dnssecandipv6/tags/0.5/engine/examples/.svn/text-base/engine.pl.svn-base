#!/usr/bin/perl
#
# $Id$

require 5.8.0;
use warnings;
use strict;

use Data::Dumper;

use DNSCheck::Engine;

######################################################################

my $engine = new DNSCheck::Engine(
    {
        db_config => "./dnscheck.conf",
        debug     => 0,
        verbose   => 1,
    }
);

$engine->process(10);
