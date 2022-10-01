#!/usr/bin/env perl
#===============================================================================
#
#         FILE: seq.pl
#
#        USAGE: ./seq.pl  
#
#  DESCRIPTION: realization of command seq
#  DESCRIPTION: https://github.com/MegaVerkruzo/seq-copy
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
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

my $ARGVSize=@ARGV;

die 'Must be at least 1 parameter' if ($ARGVSize<1);
die 'Must be less 4 parameters' if ($ARGVSize<4);

for (my $i=0; $i<$ARGVSize; $i++) {
	unless ($ARGV[$i]=~/[-+]?\d+(.\d+)?/) {
		die("Must be number, but met \"$ARGV[$i]\"");
	}
}

my $first=$ARGVSize>=2 ? $ARGV[0] : 1;

my $last=$ARGV[$ARGVSize-1];

my $step=$ARGVSize==3 ? $ARGV[1] : 1;

die "Step mustn't be zero" if ($step == 0);

for (my $i=$first; $step>0 ? $i<=$last : $last<=$i; $i+=$step) {
	print("$i\n");
}
