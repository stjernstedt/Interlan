#!/usr/bin/perl
#
# $Id$

use warnings;
use strict;
use YAML qw(LoadFile Dump);

my $file = $ARGV[0];

my ($hashref, $arrayref, $string) = LoadFile($file);

my $lang = $hashref->{locale_id};

foreach my $tag (keys %{ $hashref->{messages} }) {
    my $args   = $hashref->{messages}{$tag}{args};
    my $format = $hashref->{messages}{$tag}{format};
    my $descr  = $hashref->{messages}{$tag}{descr};

    if ($format) {
        $format = sprintf("\"%s\"", $format);
    } else {
        $format = "NULL";
    }

    if ($descr) {
        $descr = sprintf("\"%s\"", $descr);
    } else {
        $descr = "NULL";
    }

    printf("INSERT INTO messages ");
    printf("(tag,arguments,language,formatstring,description) \n");
    printf("VALUES (\"%s\",%d,\"%s\",%s,%s);\n",
        $tag, $args, $lang, $format, $descr);
}
