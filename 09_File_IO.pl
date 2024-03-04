#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature "switch";

use v5.38;

# ---------- FILE IO ----------
my $emp_file = 'employees.txt';
 
# $fh is the file handle which is used to access the file
# < means we are opening the file for reading
# $! Provides an error message
open my $fh, '<', $emp_file
  or die "Can't open file : $!";
 
# While there are lines keep reading
while(my $info = <$fh>){
  chomp($info); # Delete newline
 
  my ($emp_name, $job, $id) = split /:/, $info;
  print "$emp_name is a $job and has the id $id \n";
}
 
# Close the file
close $fh or die "Couldn't Close File : $!";
 
# Open the file for appending
open $fh, '>>', $emp_file
  or die "Can't open file : $!";
 
# Append to the file
print $fh "\nMark:Salesman:124\n";
close $fh or die "Couldn't Close File : $!";
 
# Open file to read write it
open $fh, '+<', $emp_file
  or die "Can't open file : $!";
 
  # Seek to the beginning
  seek $fh, 0, 0;
 
  # Insert item
  print $fh "Phil:Salesman:125";
  close $fh or die "Couldn't Close File : $!";

