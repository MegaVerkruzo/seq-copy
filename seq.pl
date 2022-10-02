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

use Scalar::Util qw(looks_like_number);

my $ARGVSize=@ARGV;

die 'Must be at least 1 parameter' if ($ARGVSize<1);
die 'Must be less 4 parameters' if ($ARGVSize>=4);

foreach my $value (@ARGV) 
{
	die "Must be number but met \"$value\"" if (looks_like_number($value));
}

my $first=$ARGVSize>=2 ? $ARGV[0] : 1; # по-умолчанию первый элемент арифм. прогрессии = 1, но если на вход дадут, хотя бы 2 переменной, то $first будет указан в первом аргументе

my $last=$ARGV[-1]; # последний элемент арифм. прогрессии - всегда присутствует в аргументах

my $step=$ARGVSize==3 ? $ARGV[1] : 1; # по-умолчанию шаг = 1, и только если будут указаны 3 аргумента, то аргумент по-середине будет $step

die "Step mustn't be zero" if ($step == 0);

for (my $i=$first; $step>0 ? $i<=$last : $last<=$i; $i+=$step) 
{
	print("$i\n");
}
