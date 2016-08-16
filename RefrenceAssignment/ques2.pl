#!C/strawberry/perl/bin/perl
use Data::Dumper;


print " Enter the no of family member \n";
my $num = <STDIN>;

my %member;

for(my $i=0;$i<$num;$i++)
	{
	print " Enter the role of family member : ";
	 $role= <STDIN>; 
	chomp($role);

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


	print  "  Enter Address. : \n";
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
		Age =>$age,
		PhoneNo => \%phone,
		Address => \%address);

$member{$role} =  \%details;

}

print Dumper(\%member); 
print " Family Tree created....\n\n";

my $num;
while ($num != 4){

print " Choose from the following..\n";
print "1. Search by first Name\n";
print "2. Search by Last Name \n";
print "3. Search by Age \n";
print "4. Exit \n ";
$num = <STDIN>;

if ( $num == 1) {
	print " Enter the First name : \n\n";
	my $search = <STDIN>;
	print "Searching....\n";
	chomp($search);

foreach my $var ( values  %member)
{

	if( $$var{FirstName} eq $search )
	{
	if ( $$var{Age} < 18)
		{
		print "\n-----------------------\n";
		print " First name : $$var{FirstName} \n";
		print "Last name : $$var{LastName} \n";
		print "Age : $$var{Age} \n";
		print "Home Phone No : $var->{PhoneNo}->{Home} \n";
		print "Home Address : $var->{Address}->{Home} \n";

		}
	else {
		print "\n-----------------------\n";
		print " First name : $$var{FirstName} \n";
		print "Last name : $$var{LastName}  \n";
		print "Age : $$var{Age} \n";
		print "Office Phone No : $var->{PhoneNo}->{Office} \n";
		print " Office Address : $var->{Address}->{Office}  \n";
		}
	}
	
}

}


if ( $num == 2){
	print " Enter the Last name : \n\n";
	my $search1 = <STDIN>;
	print "Searching....\n\n";
	chomp($search1);
foreach my $var ( values  %member)
{

	if( $$var{LastName} eq $search1 )
	{
		if ( $$var{Age} < 18)
		{
		print "\n-----------------------\n";
		print " First name : $$var{FirstName} \n";
		print "Last name : $$var{LastName} \n";
		print "Age : $$var{Age} \n";
		print "Home Phone No : $var->{PhoneNo}->{Home} \n";
		print "Home Address : $var->{Address}->{Home} \n";
		}
		else {
		print "\n-----------------------\n";
		print " First name : $$var{FirstName} \n";
		print "Last name : $$var{LastName}  \n";
		print "Age : $$var{Age} \n";
		print "Office Phone No : $var->{PhoneNo}->{Office} \n";
		print " Office Address : $var->{Address}->{Office}  \n";
		}

	}
	
}	

}

if ($num ==3){
        print " Enter the Age : \n\n";
        my $search2 = <STDIN>;
        print "Searching....\n\n";
        chomp($search2);
foreach my $var ( values  %member)
{

        if( $$var{Age} == $search2 )
        {
                if ( $$var{Age} < 18)
                {
                print "\n-----------------------\n";
                print " First name : $$var{FirstName} \n";
                print "Last name : $$var{LastName} \n";
                print "Age : $$var{Age} \n";
                print "Home Phone No : $var->{PhoneNo}->{Home} \n";
                print "Home Address : $var->{Address}->{Home} \n";
                }
                else {
                print "\n-----------------------\n";
                print " First name : $$var{FirstName} \n";
                print "Last name : $$var{LastName}  \n";
                print "Age : $$var{Age} \n";
                print "Office Phone No : $var->{PhoneNo}->{Office} \n";
                print " Office Address : $var->{Address}->{Office}  \n";
                }

     }
}


}
}
