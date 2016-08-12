#!C/strawberry/perl/bin/perl


@array = qw(Apple mango orange);

print "$array[0]\n";
print "$array[1]\n";
print "$array[2]\n";
print "@array\n";
$size =@array;
print "$size\n";

$max_index= $#array;
print "$max_index\n";

%hash=qw(Mansi Sharma Anmol Suri);

print "$hash{Mansi}\n";
print "$hash{Anmol}\n";
print "%hash\n";
$size =@array;
print "$size\n"