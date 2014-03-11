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

die "syntax error" unless ($ARGV[0]);

print $dns->find_parent($ARGV[0], "IN"), "\n";
