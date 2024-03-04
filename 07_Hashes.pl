#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

use feature 'say';  
use feature "switch";   

use v5.38;

my %employees = (
    "Sue" => 35,     # "Sue"-key and 35-value . '=>' is called fat comma , ',' can also be used instead of '=>'
    "Paul" => 43,
    "Sam" => 39
);
printf("Sue is %d \n", $employees{Sue});

$employees{Frank} = 44;  # adding a new key-value pair to the hash
while(my ($k, $v) = each %employees){  # each is used to iterate through a hash
    say $k . " : " . $v; 
}

my @ages = @employees{"Sue", "Sam"};  # array slicing
say @ages;

my @hash_array = %employees;  # converting a hash to an array
say @hash_array;

delete $employees{'Frank'};

say((exists $employees{'Sam'}) ? "Sam is here" : "Sam is not here");

for my $key (keys %employees){  # keys is used to get all the keys of a hash
    if($employees{$key} == 35){
        say "Hi Sue";
    }
}