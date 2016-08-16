#!C/strawberry/perl/bin/perl

use strict;
use warnings;

print "Opening and reading file content...\n\n";

open ( FH ,"<file.txt") or die "File doesnot exist";
my @lines=<FH>;

print "File contents are...\n\n";

for ( my $i=1; $i<scalar(@lines)-1; $i++){
my @details = split(",",$lines[$i]);
print "------$i------ \n";
print "User Id :        $details[0] \n";
print "Name :           $details[1] \n";
print "Phone No. :      $details[2] \n";
print "Email Id :       $details[3] \n";
print "Age :            $details[4] \n\n";
}

close FH;
