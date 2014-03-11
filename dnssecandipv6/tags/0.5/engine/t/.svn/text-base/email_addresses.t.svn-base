#!/usr/bin/perl -sw
#
# $Id: find_parent.t 173 2008-02-05 14:49:12Z jakob $

require 5.8.0;
use warnings;
use strict;

use Test::More tests => 2;

use DNSCheck;

######################################################################

my $check = new DNSCheck();

######################################################################

ok($check->mail("postmaster\@iis.se") == 0);
ok($check->mail("postmaster\@6f3899904701b0ce2835d82493c0212babf875c7.se") == 1);
