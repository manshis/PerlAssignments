#!C/strawberry/perl/bin/perl
use strict;
use warnings;

print "-----Hash Of Array-----\n";
my %hoa= (
	fruits => ["apple", "mango", "orange",],
	vegetables=>["potato","tomato","ladyfinger",],
	);

my @keys=keys %hoa;
print "-----ForEach-----\n";
foreach my $key (@keys)
{
print " Key : $key \n";
foreach my $data ( @{$hoa{$key}})
{
print "$data \n";
}
}


print "-----For------\n";

my $size=scalar(@keys);
for(my $i=0;$i<$size;$i++)
{
print " Key : $keys[$i] \n";

my $inner= scalar(@{$hoa{$keys[$i]}});
for(my $j=0;$j<$inner;$j++)
{
print "${$hoa{$keys[$i]}}[$j] \n";
}
}

print "-----While------\n";

my $k=0;
while($k<$size)
{
print " Key : $keys[$k] \n";

my $inner= scalar(@{$hoa{$keys[$k]}});
my $l=0;
while($l<$inner)
{
print "${$hoa{$keys[$k]}}[$l] \n";
$l++;
}
$k++;
}


print "-----Do While------\n";

my $p=0;
do
{
print " Key : $keys[$p] \n";

my $inner= scalar(@{$hoa{$keys[$p]}});
my $q=0;
do
{
print "${$hoa{$keys[$p]}}[$q] \n";
$q++;
}while($q<$inner);
$p++;
}while($p<$size);

