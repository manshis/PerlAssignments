#!C/strawberry/perl/bin/perl

#%hash = ( 'mansi' => 24,'xyz'=> 23,'abc'=>22);
%hash = ( 'mansi' , 24,'xyz', 23,'abc',22);
@keys= keys %hash ;

foreach my $key (keys %hash) {
    print "Printing hash contents for Key: ".$key."\n";

        print "key:".$key."-- value:".$hash{$key}."\n";

}

print "-----for----\n";
my $size= scalar(@keys);
for(my $i=0;$i<$size;$i++)
{
print "Printing hash contents for Key: ".$keys[$i]."\n";

        print "key:".$keys[$i]."-- value:".$hash{$keys[$i]}."\n";
}

print "-----while----\n";
$j=0;
while($j<$size)
{
print "Printing hash contents for Key: ".$keys[$j]."\n";

        print "key:".$keys[$j]."-- value:".$hash{$keys[$j]}."\n";
$j++;
}

print "-----do while----\n";
$k=0;
do
{
print "Printing hash contents for Key: ".$keys[$k]."\n";

        print "key:".$keys[$k]."-- value:".$hash{$keys[$k]}."\n";
$k++;
}while($k<$size);