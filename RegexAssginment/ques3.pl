#!C/strawberry/perl/bin/perl

use strict;
use warnings;

print " Opening and reading file content....\n \n";
open (FHI, "<emp.txt") or die "Cannot open file";

my @lines =<FHI>;
my @new_lines = ($lines[0]) ;

print "Formating file content...\n\n";
for(my $i =1;$i < scalar(@lines); $i++){
my @details= split(",",$lines[$i]);
$details[1] =~ s/^([a-z])/\U$1/;
$details[2] =~s/\b[0-9]{8}\b/020-$details[2]/;
$details[3]=~tr/[A-Z]/[a-z]/;
push(@new_lines , join(",",$details[1],$details[2],$details[3]));
}

print " Opening file to write the formated details \n\n";
open (FHO, ">new_emp.txt") or die "Cannot open file";

print FHO @new_lines;
print "Writing in file done!!\n\n";

close FHI;
close FHO;

