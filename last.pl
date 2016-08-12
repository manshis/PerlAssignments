#!C/strawberry/perl/bin/perl
use strict;
use warnings;


my $a = 10;
while( $a < 20 ){
       if( $a == 15)
       {
          # terminate the loop.
          $a = $a + 1;
          last;
       }
       print "value of a: $a\n";
       $a = $a + 1;
}
