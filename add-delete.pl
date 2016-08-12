#!C/strawberry/perl/bin/perl

%hash = ( 'mansi' => 24,'xyz'=> 23,'abc'=>22);
$size= %hash;
print "$size\n";

$hash{'pqr'} = 25;
$size= %hash;
print "$size\n";

delete $hash{'pqr'};
$size= %hash;
print "$size\n";
