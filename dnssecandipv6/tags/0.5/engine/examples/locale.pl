#!/usr/bin/perl
#
# $Id: locale.pl 117 2007-12-27 09:04:59Z jakob $

require 5.8.0;
use warnings;
use strict;

use Data::Dumper;

use DNSCheck::Logger;
use DNSCheck::Lookup::DNS;
use DNSCheck::Lookup::ASN;

######################################################################

my $logger =
  new DNSCheck::Logger({ interactive => 1, locale => "locale/en.yaml" });
my $dns = new DNSCheck::Lookup::DNS($logger);
my $asn = new DNSCheck::Lookup::ASN($logger, $dns);

die "syntax error" unless ($ARGV[0]);

$asn->lookup($ARGV[0]);
