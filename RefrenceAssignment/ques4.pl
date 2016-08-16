#!/usr/bin/perl 

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
print "1. Sort by First Name\n";
print "2. Sort by Last Name \n";
print "3. Sort by Age \n";
print "4. Exit \n ";
$num = <STDIN>;

if ( $num == 1) {

foreach my $role (sort{$member{lc $a}->{FirstName} cmp  $member{lc $b}->{FirstName} } keys %member)
{
print "----------Role : $role-------------- \n  ";
print "First Name : $member{$role}->{FirstName} \n ";
print "Last Name : $member{$role}->{LastName} \n ";
print "Age : $member{$role}->{Age} \n ";
print "Phone No : $member{$role}->{PhoneNo}->{Home} \n ";
print "Home Phone No : $member{$role}->{PhoneNo}->{Home} \n ";
print "Office Phone No : $member{$role}->{PhoneNo}->{Office} \n ";
print "Home Address : $member{$role}->{Address}->{Home} \n ";
print "Office Address : $member{$role}->{Address}->{Office} \n ";


}

}


if ( $num == 2){
foreach my $role (sort{$member{lc $a}->{LastName} cmp  $member{lc $b}->{LastName} } keys %member)
{
print "-----------Role : $role----------- \n  ";
print "First Name : $member{$role}->{FirstName} \n ";
print "Last Name : $member{$role}->{LastName} \n ";
print "Age : $member{$role}->{Age} \n ";
print "Phone No : $member{$role}->{PhoneNo}->{Home} \n ";
print "Home Phone No : $member{$role}->{PhoneNo}->{Home} \n ";
print "Office Phone No : $member{$role}->{PhoneNo}->{Office} \n ";
print "Home Address : $member{$role}->{Address}->{Home} \n ";
print "Office Address : $member{$role}->{Address}->{Office} \n ";


}


	
	

}

if ($num ==3){

foreach my $role (sort{$member{$a}->{Age} <=> $member{$b}->{Age} 
 } keys %member)
{
print "--------------Role : $role----------- \n  ";
print "First Name : $member{$role}->{FirstName} \n ";
print "Last Name : $member{$role}->{LastName} \n ";
print "Age : $member{$role}->{Age} \n ";
print "Phone No : $member{$role}->{PhoneNo}->{Home} \n ";
print "Home Phone No : $member{$role}->{PhoneNo}->{Home} \n ";
print "Office Phone No : $member{$role}->{PhoneNo}->{Office} \n ";
print "Home Address : $member{$role}->{Address}->{Home} \n ";
print "Office Address : $member{$role}->{Address}->{Office} \n ";


}


}



}

