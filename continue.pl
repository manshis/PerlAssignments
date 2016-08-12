#!C/strawberry/perl/bin/perl
use strict;
use warnings;


my @list = (1, 2, 3, 4, 5);
foreach my $a (@list){
       print "Value of a = $a\n";
}continue{
          last if($a == 4);
}