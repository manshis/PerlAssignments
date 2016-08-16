#!C/strawberry/perl/bin/perl
use strict;
use warnings;

print "-----Hash Of Hash-----\n";

my %hoh = (
        flintstones => {
                husband   => "fred",
                pal       => "barney",
        },
        jetsons => {
                husband   => "george",
                wife      => "jane",
                "his boy" => "elroy",  
        },
        simpsons => {
                husband   => "homer",
                wife      => "marge",
                kid       => "bart",
        },
);

print "-----for each-----\n";
my @keys= keys %hoh;
foreach my $key (@keys) {
    
    print "Key: $key\n";
	my @inner_keys=keys %{$hoh{$key}};
    foreach my $key2 (@inner_keys) {
        print "$key2 : $hoh->{$key}->{$key2}\n";
    }
}





print "-----For------\n";

my $size=scalar(@keys);
for(my $i=0;$i<$size;$i++)
{
print " Key : $keys[$i] \n";

my @inner_keys=keys %{$hoh{$keys[$i]}};
my $inner=scalar(@inner_keys);
for(my $j=0;$j<$inner;$j++)
{
print "$inner_keys[$j] :$hoh{$keys[$i]}->{$inner_keys[$j]} \n";
}
}


print "-----While------\n";

my $size=scalar(@keys);
my $k=0;
while($k<$size)
{
print " Key : $keys[$k] \n";

my @inner_keys=keys %{$hoh{$keys[$k]}};
my $inner=scalar(@inner_keys);

my $l=0;
while($l<$inner)
{
print "$inner_keys[$l] :$hoh{$keys[$k]}->{$inner_keys[$l]} \n";
$l++;
}
$k++;
}




print "-----Do While------\n";

my $size=scalar(@keys);
my $p=0;
do
{
print " Key : $keys[$p] \n";

my @inner_keys=keys %{$hoh{$keys[$p]}};
my $inner=scalar(@inner_keys);

my $q=0;
do
{
print "$inner_keys[$q] :$hoh{$keys[$p]}->{$inner_keys[$q]} \n";
$q++;
}while($q<$inner);

$p++;
}while($p<$size);


