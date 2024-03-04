#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

use feature 'say';  
use feature "switch";   

use v5.38;

# Math functions
say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;
say "5 ** 4 = ", 5 ** 4;

# Built in functions
say "EXP 1 = ", exp 1;
say "HEX 10 = ", hex 10;
say "OCT 10 = ", oct 10;
say "INT 6.45 = ", int(6.45);
say "LOG 2 = ", log 2;
say "Random between 0 - 10 = ", int(rand 11); # rand function returns a random number between 0 and 10
say "SQRT 9 = ", sqrt 9;

# assignment operators
my $rand_num = 5;
$rand_num += 1;

# increment and decrement operators
say $rand_num++;
say ++$rand_num;