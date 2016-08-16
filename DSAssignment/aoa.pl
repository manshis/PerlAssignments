#!C/strawberry/perl/bin/perl
use strict;
use warnings;

print "----Array of Array---\n";
my $aoa =[[2 , 4 ,6,],
	[3 , 6 ,9,],
	[4 , 8 ,12,],];
my $i= 0;


print "---For Each -----\n";
foreach my $var (@$aoa){
	print "Array : $i \n";
	foreach my $var1 (@$var){
		print "$var1 \n ";
		}
	$i++;
} 

print "---While-----\n";
my $j=0;
my $size = scalar(@{$aoa});
while($j<$size)
{
	print "Array : $j \n";
	my $k=0;
	
	my $inner= scalar(@{${$aoa}[$j]});

	while($k<$inner)
	{
	
	print "$aoa->[$j][$k]\n";
	$k++;
	}
	$j++;
}
	

print "---For Loop-----\n";


for(my $l=0;$l<$size;$l++)
{
	print "Array : $l \n";
	
	
	my $inner= scalar(@{${$aoa}[$l]});

	for(my $m=0;$m<$inner;$m++)
	{
	
	print "$aoa->[$l][$m]\n";
	
	}
	
}		
	


print "---Do While-----\n";
my $p=0;
my $size = scalar(@{$aoa});
do
{
	print "Array : $p \n";
	my $q=0;
	
	my $inner= scalar(@{${$aoa}[$p]});

	do
	{
	
	print "$aoa->[$p][$q]\n";
	$q++;
	}while($q<$inner);

	$p++;
}while($p<$size);


