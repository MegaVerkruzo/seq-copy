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
#         BUGS: Don't proccessing uncorrect queriers 
#        NOTES: 1) Add options
#        NOTES: 2) Add downto step
#        NOTES: 3) Add --format
#       AUTHOR: Alexey Grunskii (MegaVerkruzo), robochat@mail.ru
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 27.09.2022 07:07:22
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my $left=1;
my $right=0;
my $step=1;
my $ARGVSize=@ARGV;
for(my $i=0; $i<$ARGVSize; $i++) {
	if ($ARGV[$i]=~/[-+]?\d+(.\d+)?/) {
		if ($i+3<$ARGVSize) {
			die "extra operand $ARGV[$i+3]";
		}
		elsif ($ARGV[$i+1]=~/[-+]?\d+(.\d+)?/ && $ARGV[$i+2]=~/[-+]?\d+(.\d+)?/) {
			$left=$ARGV[$i];
			$right=$ARGV[$i+1];
			$step=$ARGV[$i+2];
		} 
		elsif ($i+3==$ARGVSize) {
			die "extra operand $ARGV[$i+2]";
		}
		elsif ($ARGV[$i+1]=~/[-+]?\d+(.\d+)?/) {
			$left=$ARGV[$i];
			$right=$ARGV[$i+1];
		}
		elsif ($i+2==$ARGVSize) {
			die "extra operand $ARGV[$i+1]";
		}
		else {
			$right=$ARGV[$i];
		}
	}
	# Here i need to write options if's
}
for (my $i=$left; $left<=$right ? $i<=$right : $left<=$i; $i+=$step) {
	print "$i\n";
}
