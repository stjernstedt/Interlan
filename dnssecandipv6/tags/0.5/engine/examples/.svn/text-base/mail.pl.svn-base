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

my @email = ("jakob\@kirei.se", "hostmaster\@n6.schlyter.se",
    "invalid-user\@schlyter.se");

foreach my $x (@email) {
    $check->mail($x);
}
