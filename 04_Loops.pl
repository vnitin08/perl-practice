#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

use feature 'say';  
use feature "switch";   

use v5.38;

# for loop
for(my $i = 0; $i < 10; $i++){
    say $i;
}

# while loop
my $i = 1;
while($i < 10){
    if($i % 2 == 0){
        $i++;
        next;   # next is used to skip the rest of the loop and start the next iteration
    }
    if($i == 7){last;}  # last is used to exit the loop
    say $i;
    $i++;
}

# do while loop
my $lucky_num = 7;
my $guess;

do{
    say "Guess a number between 1 and 10";
    $guess = <STDIN>;  # <STDIN> is used to take input from the user
} while $guess != $lucky_num;

say "You guessed 7";

#switch statement
my $i = 10;
given($i){
    when(5){say "i is 5";}
    when(6,7){say "i is 6 or 7";}
    when([10,11]) {say "i is 10 or 11";}
    default {say "i is not 5, 6, 7 or 10";}
}

