#!C/strawberry/perl/bin/perl

@arr=(6,3,9,4,5);

print "Before : @arr\n";

@arr1=sort(@arr);

print "After sort :  @arr1";

@arr2=reverse(@arr);

print "After reverse:  @arr2";