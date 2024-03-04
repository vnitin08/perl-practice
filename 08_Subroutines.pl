#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

use feature 'say';  
use feature "switch";   

use v5.38;

# Subroutines function - a block of code that can be called by its name
sub get_random{
    return int(rand 11);  # returns a random number between 0 and 10
}

say "Random number = ", get_random();

sub get_random_max{
    my ($max_num) = @_;  # @_ is the default array of all the parameters passed to the subroutine
    $max_num ||= 11; 
    return int(rand $max_num);
}

say "Random number = ", get_random_max(100);

sub get_sum{
    my ($first, $second) = @_;   
    $first ||= 1;  # default value of first is 1
    $second ||= 1; 
    return $first + $second;
}

sub sum_many{
    my $sum = 0;
    foreach my $val (@_){
        $sum += $val;
    }
    return $sum;
}

say "Sum = ", sum_many(1,2,3,4,5,6);

sub increment{
    state $execute_total = 0;  # state is used to retain the value of variable between calls
    $execute_total++;
    say "Executed $execute_total times";
}

increment();
increment();

sub double_array{
    my @num_array = @_;
    $_ *= 2 for @num_array;  # $_ is the default variable for the current element in the array
    return @num_array;
}

my @rand_array = (1,2,3,4,5);
say "Array = ", join(", ", double_array(@rand_array));

sub get_mults{
    my ($rand_num) = @_;
    $rand_num ||= 1;
    return $rand_num * 2, $rand_num * 3;  # returns a list of values
}

my ($dbl_num, $trip_num) = get_mults(3);
say "$dbl_num, $trip_num";

# Recursion
sub factorial{
    my ($n) = @_;
    return 0 if $n <= 0;
    return 1 if $n == 1;
    return $n * factorial($n - 1);
}

say "Factorial 4 = ", factorial(4); 
