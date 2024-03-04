#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

use feature 'say';  
use feature "switch";   

use v5.38;

my @primes = (2, 3, 5, 7, 11, 13, 17);

my @my_info = ("Nitin", "123 Main St", 40, 6.25);

$my_info[4] = "Delhi";

for my $i (@my_info){
    say $i;
}

foreach my $num (@primes){
    say $num;
}

for (@my_info){
    say $_; # $_ is a default variable in perl, no variable is declared
}

# array slicing
my @my_name = @my_info[0, 4];  # stores the 0th and 4th index of @my_info array in @my_name array
say @my_name;

# array functions
my $items = scalar @my_info;  # scalar is used to get length of an array
say $items;

# assign values to an array
my ($f_name, $address, $how_old, $height, $city) = @my_info;
say "$f_name lives in $city";

# pop and push functions
say "Popped Value ", pop @primes;  # pop is used to remove the last element of an array
say "Pushed Value ", push @primes, 17;  # push is used to add an element to the end of an array and returns the length of the array

# shift and unshift functions
say "First Item ", shift @primes;  # shift is used to remove the first element of an array and returns the removed element
say "Unshifted Item ", unshift @primes, 2;  # unshift is used to add an element to the beginning of an array and returns the length of the array after adding the element. 2 is added to the beginning of the array

print join(", ", @primes), "\n";   # join is used to join the elements of an array with a string

# splice function
say "Remove Index 0 - 2 ", splice @primes, 0, 3;  # splice is used to remove elements from an array, the first argument is the array, the second argument is the starting index, the third argument is the number of elements to remove; it returns the removed elements
print join(", ", @primes), "\n";  

print join(" ", ('list', 'of', 'words', "\n"));  

my $customers = "Sue Sally Paul";
my @cust_array = split / /, $customers;  # split is used to split a string into an array, the first argument is the delimiter, the second argument is the string to split
print join(", ", @cust_array), "\n";

@cust_array = reverse @cust_array;
@cust_array = sort @cust_array;
@cust_array = reverse sort @cust_array;

# grep function - returns a list of elements that match a condition 
my @number_array = (1, 2, 3, 4, 5, 6, 7, 8);
my @odds_array = grep {$_ % 2} @number_array;  # the condition is $_ % 2, which returns true if the current element is odd, and false if the current element is even
print join(", ", @odds_array), "\n";

# map function - returns a list of elements after applying a function to each element
my @dbl_array = map {$_ * 2} @number_array;  # the function is $_ * 2, which doubles each element of the array
print join(", ", @dbl_array), "\n";