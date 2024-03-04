#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

use feature 'say';  # say is experimental feature in perl 5.10.0 and later
use feature "switch";   # switch is experimental feature in perl 5.10.0 and later

use v5.38;

print "Hi , this is perl code.\n";


# Scalar variable
my $name = 'Nitin';

my ($age, $street) = (40, '123 Main St');   

my $my_info = "$name lives on \"$street\"\n";
$my_info = qq{$name lives on "$street"\n};  # qq is used to avoid escaping of quotes
say $my_info;

my $bunch_of_info = <<"END";
This is a
bunch of information
on multiple lines
END

say $bunch_of_info;     # say is used to print with newline
# print $bunch_of_info; # print is used to print without newline


# %c : character
# %s : string
# %d : decimal
# %u : unsigned integer
# %f : floating point (decimal notation)
# %e : floating point (scientific notation)
# %g : floating point (use %f or %e as required)

my $big_int = 18446744073709551615;
printf("%u \n", $big_int + 1);

my $big_float = .1000000000000001;
printf("%.16f \n", $big_float + .1000000000000001);

my $first = 1;
my $second = 2;
($first, $second) = ($second, $first);  # swapping of two numbers
say "$first $second";



