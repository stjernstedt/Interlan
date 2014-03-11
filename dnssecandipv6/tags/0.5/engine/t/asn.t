#!/usr/bin/perl -sw
#
# $Id: find_parent.t 249 2008-03-03 15:48:42Z jakob $

require 5.8.0;
use warnings;
use strict;

use Test::More tests => 2;

use DNSCheck::Logger;
use DNSCheck::Lookup::DNS;
use DNSCheck::Lookup::ASN;

######################################################################

my $logger = new DNSCheck::Logger();
my $dns = new DNSCheck::Lookup::DNS($logger);
my $asn    = new DNSCheck::Lookup::ASN($logger, $dns);

######################################################################


ok(join(",",@{$asn->lookup("195.47.254.0")}) eq "29344");
ok(join(",",@{$asn->lookup("192.71.220.0")}) eq "1257");
