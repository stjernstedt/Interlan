#!/usr/bin/perl

#############################################################################
#                                LICENSE                                    #
#                                                                           #
# Copyright (c) 2005 by Ivan Pintori <ivan@pintori.it>                      #
#                                                                           #
# This program is free software; you can redistribute it and/or modify      #
# it under the terms of the GNU General Public License as published by      #
# the Free Software Foundation; either version 2 of the License, or         #
# (at your option) any later version.                                       #
#                                                                           #
# This program is distributed in the hope that it will be useful,           #
# but WITHOUT ANY WARRANTY; without even the implied warranty of            #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the             #
# GNU General Public License for more details.                              #
#                                                                           #
# You should have received a copy of the GNU General Public License         #
# along with this program; if not, write to the Free Software               #
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA #
#############################################################################


use strict;

use XML::Twig;
use Getopt::Long;
use Term::ReadKey;

#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#              DEFAULTS
#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
# defaults for command line options
my %optctl = (	rrdtool    => '/usr/local/apps/rrdtool/bin/rrdtool',
				tmppath    => '/tmp',
			 );

my $removecmd = "/bin/rm";

sub getdate
{
	my ($line) = @_;

#    print "$line\n";
	if ($line =~ /^\s*<!-- \d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2} (\w{4}|\w{3}) \/ (\d{10}) -->/) {
		return ($2);
	} else {
		return (-1);
	}
}



sub rra
{
	my ($twig, $new_rra, $old_twig) = @_;

	print "Start processing Round Robin DB\n";
	my $cf          = $new_rra->first_child( 'cf' )->text;
	my $pdp_per_row = $new_rra->first_child( 'pdp_per_row' )->text;
	my $xff         = $new_rra->first_child( 'xff' )->text;

	print "  CF         : $cf\n";
	print "  Pdp x Row  : $pdp_per_row\n";

	my $cdp_prep    = $new_rra->first_child( 'cdp_prep' );
	my $ds          = $cdp_prep->first_child( 'ds' );
	my $ds_value    = $ds->first_child( 'value' )->text;
	my $ds_unkdatap = $ds->first_child( 'unknown_datapoints' )->text;

	$old_twig = $old_twig->first_child;
	while ( $old_twig )
	{
		if ($old_twig->tag =~ /rra/) {
			my $old_rra = $old_twig->first_child;
			my $cfOK;
			my $pdp_per_rowOK;
			my $done_rra;
			while ($old_rra && !($done_rra))
			{
				if (($old_rra->tag =~ /cf/) && ($old_rra->text =~ /$cf/)) {
					$cfOK = 1;
				}
				if (($old_rra->tag =~ /pdp_per_row/) && ($old_rra->text =~ /$pdp_per_row/)) {
					$pdp_per_rowOK = 1;
				}
				if (($cfOK && $pdp_per_rowOK) && ($old_rra->tag =~ /xff/)) {
					$old_rra->set_text ( $xff );
				}
				if (($cfOK && $pdp_per_rowOK) && ($old_rra->tag =~ /cdp_prep/)) {
					my $old_ds = $old_rra->first_child;
					while ($old_ds)
					{
						if ($old_ds->tag =~ /value/) {
							$old_ds->set_text( $ds_value );
						}
						$old_ds = $old_ds->next_sibling;
					}
				}
				if (($cfOK && $pdp_per_rowOK) && ($old_rra->tag =~ /database/)) {
					print "    Start processing DB rows\n";
# I am positioning at the start of the Rows DB in the new RRA
					my $database = $new_rra->first_child( 'database' );
					my $row = $database->first_child( 'row' );
# I am positioning at the end of the Rows DB in the OLD RRA
					my $old_row = $old_rra->last_child( 'row' );
					my $time = getdate($old_row->extra_data);
					while ($row)
					{
						if ($time < getdate($row->extra_data)) {
# Set new row to merge
							my $newrow   = new XML::Twig::Elt( 'row' );   # create the row
 							$newrow = $newrow->set_extra_data ( $row->extra_data );
							my $newvalue = new XML::Twig::Elt( 'v', $row->first_child( 'v' )->text );    # create the value
 							my $parent_row = $old_row->parent;
							$newrow->paste ( 'last_child', $parent_row );
							$newvalue->paste ( 'last_child', $parent_row->last_child( 'row' ) );
# FIFO: Oldest (first) row gets pushed out
							$parent_row->first_child( 'row' )->delete;
						}
						$row = $row->next_sibling;
					}
					print "    Finished processing DB rows\n";
					$done_rra = 1;
				}
 				$old_rra = $old_rra->next_sibling;
			}
		}
		$old_twig = $old_twig->next_sibling;
    }
	return;
}


sub lastupdate
{
	my ($twig, $lastupdate, $old_twig) = @_;

	print "Last Update: " . $lastupdate->text . "\n";

	$old_twig = $old_twig->first_child('lastupdate');
	if ($old_twig->tag =~ /lastupdate/) {
		$old_twig->set_text($lastupdate->text);
	}
}


sub rrd
{
	my ($twig, $rrd, $old_twig) = @_;

	print "Start processing header\n";

	$old_twig = $old_twig->first_child ( 'ds' );
	$rrd = $rrd->first_child ( 'ds' );
	print "DB Service Name: " . $rrd->first_child( 'name' )->text . "\n";
	$old_twig->set_extra_data( $rrd->extra_data );
	$old_twig = $old_twig->first_child;
	while ( $old_twig )
	{
		my $twigtag = $old_twig->tag;
		my $tempdstext = $rrd->first_child ( $twigtag )->text;
		if ( !($tempdstext =~ /NaN/) ) {
			$old_twig->set_text( $tempdstext );
		}
		$old_twig = $old_twig->next_sibling;
	}
	print "Finished updating header\n";
 }


sub printhelp
{
	my (%optctl) = @_;

	print "RRD Merger v0.2 (1 may 2005)\n";
	print "Copyright (c) 2005 by Ivan Pintori <ivan\@pintori.it>\n";
	print "\nUsage: rrdmerger.pl  --oldrrd=<file.rrd> --newrrd=<file.rrd>\n";
	print "                      [--mergedrrd=<file.rrd>] [--tmppath=<directory>]\n";
	print "                      [--rrdtool=</path/rrdtool>]";
	print "\nOptions:\n";
	print "  --oldrrd=file.rrd      : old RRD file to merge with new one\n";
	print "  --newrrd=file.rrd      : new RRD file to merge with old one\n";
	print "  --mergedrrd=file.rrd   : resulting file. If not specified will take the\n";
	print "                           name of the new file with added a timestamp\n";
	print "  --tmppath=directory    : directory where to store temporary files.\n";
	print "                           Default --> $optctl{tmppath}\n";
	print "  --rrdtool=file         : path and file name of rrdtool binary.\n";
	print "                           Default --> $optctl{rrdtool}\n";
	print "\n\nRRD Merger is distributed under the Terms of the GNU General\n";
    print "Public License Version 2. (www.gnu.org/copyleft/gpl.html)\n";
	exit;
}

sub ynquery
{
	my ($question) = @_;
	my $key = "";

	while (!($key =~ /(y|Y|n|N)/))
	{
		print $question;
		ReadMode 4; # Turn off controls keys
		while (not defined ($key = ReadKey(-1)))
		{
			# No key yet
		}
		ReadMode 0; # Reset tty mode before exiting
		print "\n";
	}
	return($key);
}

sub parseargs
{
	my (%options) = @_;

	if (($options{oldrrd}) && (-e ($options{oldrrd})))
	{
		if (($options{newrrd}) && (-e ($options{newrrd})))
		{
			if ($options{mergedrrd})
			{
				if (-e ($options{mergedrrd}))
				{
					if (ynquery("File $options{mergedrrd} exists. Do you want to overwrite it? (Y/N) ") =~ /(n|N)/) {
						exit;
					}
					print "\nOverwriting $options{merged_rrd}\n";
				}
			}
		} else {
			print "Fatal error: missing new RRD file to merge!\n\n";
			printhelp(%options);
			exit;
		}
	} else {
		print "Fatal error: missing old RRD file to merge!\n\n";
		printhelp(%options);
		exit;
	}
}


# Reading command line options
GetOptions(\%optctl, "help", "oldrrd=s", "newrrd=s", "mergedrrd:s", "tmppath:s", "rrdtool:s");

if ($optctl{help}) {
	printhelp(%optctl);
	exit;
}

parseargs(%optctl);

# Set timer
my $timer = time();

# Dump oldrrd in XML
$optctl{oldrrd} =~ /([a-zA-Z0-9\_\-\. ]*)$/;
my $old_xml = "$optctl{tmppath}/$1_old_$$.xml";
print "Dumping $optctl{oldrrd} to XML: $old_xml\n";
`$optctl{rrdtool} dump $optctl{oldrrd} >$old_xml`;

# Dump newrrd in XML
$optctl{newrrd} =~ /([a-zA-Z0-9\_\-\. ]*)$/;
my $new_xml = "$optctl{tmppath}/$1_new_$$.xml";
print "Dumping $optctl{newrrd} to XML: $new_xml\n";
`$optctl{rrdtool} dump $optctl{newrrd} >$new_xml`;

# Parsing old XML in memory
print "Parsing $optctl{oldrrd} XML...";
my $old_twig = new XML::Twig;
$old_twig->parsefile($old_xml);
print "...parsing completed\n";

# Parsing new XML and create a merged version
print "Parsing $optctl{newrrd} XML...\n";
my $twig = new XML::Twig
			( TwigHandlers =>
				{
					rrd        => sub { rrd        (@_, $old_twig->root) },
					lastupdate => sub { lastupdate (@_, $old_twig->root) },
					rra        => sub { rra        (@_, $old_twig->root) }
				}
			);
$twig->parsefile($new_xml);
print "...parsing completed\n";

# Writing merged XML on to disk
$old_twig->set_pretty_print( 'indented');
print "Outputing to $optctl{mergedrrd}\n";
$optctl{mergedrrd} =~ /([a-zA-Z0-9\_\-\. ]*)$/;
my $temp_xml = "$optctl{tmppath}/$1_merged_$$.xml";
open TEMPXML, ">", $temp_xml or die;
$old_twig->print ( \*TEMPXML );

# Restore merged XML in RRD
if (-e $optctl{mergedrrd})
{
	`$removecmd $optctl{mergedrrd}`;
}
print "Restoring from XML to RRD: $optctl{mergedrrd}\n";
`$optctl{rrdtool} restore $temp_xml $optctl{mergedrrd}`;

# Delete xml files in temporary directory
print "File clean up\n";
`$removecmd $old_xml`;
`$removecmd $new_xml`;
`$removecmd $temp_xml`;

print "Processing complete. It took " . (time() - $timer) . " seconds\n";

