#!/usr/bin/perl
#
# $Id: smtp.pl 88 2007-11-30 12:42:35Z jakob $

require 5.8.0;
use warnings;
use strict;

use Data::Dumper;

use DNSCheck;

######################################################################

my $check = new DNSCheck({ interactive => 1 });

$check->smtp("mail.schlyter.se", "jakob\@schlyter.se");
