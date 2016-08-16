#!C/strawberry/perl/bin/perl
use Data::Dumper;

print " Enter the no of family member \n";
my $num = <STDIN>;

my %member;
my %details;
my @det;

for(my $i=0;$i<$num;$i++)
{
print " Enter the role of family member : ";
my $value= <STDIN>; 
chomp($value);

print " Enter First name  : ";
my $fname=<STDIN>;
chomp($fname);

print " Enter Last name  : ";
my $lname=<STDIN>;
chomp($lname);


print " Enter Age  : ";
my $age=<STDIN>;
chomp($age);

print " Enter Phone No. : \n";
print "Office : ";
my $ofc=<STDIN>;
chomp($ofc);

print "Home : ";
my $hm =<STDIN>;
chomp($hm);

my %phone =( Office => $ofc ,
		Home => $hm );


print " Enter Address. : \n";
print "Office : ";
$ofc=<STDIN>;
chomp($ofc);

print "Home : ";
$hm =<STDIN>;
chomp($hm);

my %address =( Office => $ofc ,
		Home => $hm );
my %details = ( FirstName => $fname,
		LastName => $lname,
		Age=>$age,
		PhoneNo=> \%phone,
		Address => \%address);

$member{$value} = \%details;


}
print Dumper(\%member);
