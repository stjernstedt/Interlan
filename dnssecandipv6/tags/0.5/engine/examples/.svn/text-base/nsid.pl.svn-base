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
my $dns = new DNSCheck::Lookup::DNS($logger, { debug => 1 });

my $nsid = $dns->query_nsid("62.119.93.254", "se", "IN", "SOA");
