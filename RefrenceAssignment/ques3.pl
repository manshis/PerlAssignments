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


my $update;
while ( $update != 1){

	print "Enter the role of a member whose details you want to update and press 1 to exit \n";
	$update = <STDIN>;
	chomp($update);
	my $num ;
	if($update != 1){
	
		foreach my $var (keys %member){

			if ($var eq $update ){
			
				while ($num != 4){

				print "\n Choose from the following..\n";
				print "1. Update first Name\n";
				print "2. Update  Last Name \n";
				print "3. Update Age \n";
				print "4. Back \n";
				print "5. View Family Tree\n";
	
				$num = <STDIN>;

					if ( $num == 1) {
					print "\nEnter new first name \n";
					my $newfname = <STDIN>;
					chomp($newfname);
					$member{$var}->{FirstName} = $newfname;
					print "Updated..\n";
					}
					if($num == 2){
					print "\nEnter new last name \n";
                			my $newlname = <STDIN>;
					chomp($newlname);
        			        $member{$var}->{LastName} = $newlname;
					print "Updated..\n";
					}
					if($num ==3){
		 			print "\nEnter new Age \n";
					my $newage = <STDIN>;
					chomp($newage);
					$member{$var}->{Age} = $newage;
					print "Updated.. \n";
					}
		
					if($num ==5){
               				print Dumper(\%member);
               				}

    		
				}
			}

		}

	}
}
