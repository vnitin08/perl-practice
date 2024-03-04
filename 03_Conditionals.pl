#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

use feature 'say';  
use feature "switch";   

use v5.38;

# undef is used to undefine a variable or to check if a variable is defined or not.

# my is used to declare a local variable.
# our is used to declare a global variable.

my $age = 80;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;

if($age < 16){
    say "You can't drive";
} elsif(!$is_not_intoxicated){
    say "You can't drive";
} else {
    say "You can drive";
}

# comparison operators for numbers
if(($age >= 1) && ($age < 16)){
    say "You can't drive";
} elsif(!$is_not_intoxicated){
    say "You can't drive";
} elsif(($age >= 80) && (($age > 100) || (($age - $age_last_exam) > 5))){
    say "You can't drive";
} else {
    say "You can drive";
}

# comparison operators used for string
# eq, ne, le, lt, ge, gt

if('a' eq 'b'){
    say "a equals b";
} else {
    say "a doesn't equal b";
}

# unless is used to check for false condition, opposite of if .
unless(!$is_not_intoxicated){
    say "Get Sober";
}

# Ternary operator
say (($age > 18) ? "Can Vote" : "Can't Vote");