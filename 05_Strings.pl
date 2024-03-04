#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

use feature 'say';  
use feature "switch";   

use v5.38;

my $long_string = "Random Long String";
say "Length of string ", length $long_string;
#printf is used to format the output
printf("Long is at %d \n", index $long_string, "Long");
printf("Last g is at %d \n", rindex $long_string, "g");

#concatenation
$long_string = $long_string . ' isn\'t that long';
# $long_string .= ' isn\'t that long';

#substr is used to extract a substring
say "Index 7 through 10 ", substr $long_string, 7, 4;

my $animal = "animals";
printf("Last character is %s\n", chop $animal); # chop is used to remove the last character of a string

my $no_newline = "No Newline\n";
chomp $no_newline; # chomp is used to remove the newline character from the end of a string

# Uppercase and lowercase functions
printf("Uppercase : %s \n", uc $long_string);
printf("Lowercase : %s \n", lc $long_string);
printf("1st Uppercase : %s \n", ucfirst $long_string);

#replace function
$long_string = "Random Long String";
$long_string =~ s/ /, /g; # replace all spaces with , 
say $long_string;

#repeat function
my $two_times = "What I said is " x 2;
say $two_times;

my @abcs = ('a' .. 'z'); # .. is used to create a range, it creates a array of all the characters between a and z

print join(", ", @abcs), "\n"; # join is used to join the elements of an array with a string

#split function
my $letter = 'A';
say "Next Letter ", ++$letter;
