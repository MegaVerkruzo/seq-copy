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

unless (1 <= $ARGVSize && $ARGVSize <= 3) {
	die("Must be at least 1 parameter and less 3 parameters");
}

# for (my $i=0; $i<$ARGVSize; $i++) {
# 	unless ($ARGV[$i]=~/[-+]?\d+(.\d+)?/) {
# 		die("Must be number, but met \"$ARGV[$i]\"");
# 	}
# }

my $left=1;
my $right=0;
my $step=1;

if ($ARGVSize==1) {
	$right=$ARGV[0];
}
elsif ($ARGVSize==2) {
	$left=$ARGV[0];
	$right=$ARGV[1];
}
elsif ($ARGVSize==3) {
	$left=$ARGV[0];
	$right=$ARGV[1];
	$step=$ARGV[2];
}

for (my $i=$left; $left<$right ? $i<=$right : $right<=$i; $i++) {
	print("$i\n");
}
