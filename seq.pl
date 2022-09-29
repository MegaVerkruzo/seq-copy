#!/usr/bin/env perl
#===============================================================================
#
#         FILE: seq.pl
#
#        USAGE: ./seq.pl  
#
#  DESCRIPTION: realization of command seq
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: Don't proccessing uncorrect queriers, options 
#        NOTES: ---
#       AUTHOR: Alexey Grunskii (MegaVerkruzo), robochat@mail.ru
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 27.09.2022 07:07:22
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

if (@ARGV==2) 
{
	for (my $i=$ARGV[0]; $i<=$ARGV[1]; $i++) 
	{
		print $i, "\n";
	}
}
elsif (@ARGV==3)
{
	for (my $i=$ARGV[0]; $i<=$ARGV[2]; $i+=$ARGV[1])
	{
		print $i, "\n";	
	}
}
else
{
	die "Must be at least 2 params";
}
