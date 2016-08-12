#!/usr/bin/perl
#use strict;
#use warnings;

use family;

my $num;
my @family ;
while ($num !=6){
	print "\n Choose from the following \n";
	print "1. Add family member \n";
	print "2. Search member \n";
	print "3. Update member \n";
	print "4. Sort members \n";
	print "5. View member \n";
	print "6. Exit \n";
	$num =<STDIN>;
	chomp ($num);
	



	if( $num ==1){
	
	print "\nEnter Position : ";
	my $pos = <STDIN>;
	chomp($pos);
	
	print "\nEnter First Name : ";
        my $fname = <STDIN>;
        chomp($fname);

	print "\nEnter Last Name : ";
        my $lname = <STDIN>;
        chomp($lname);

	print "\nEnter Age : ";
        my $age = <STDIN>;
        chomp($age);

	print "\nEnter Mobile No : ";
        my $mobile = <STDIN>;
        chomp($mobile);

	print "\nEnter Home Phone No. : ";
        my $home = <STDIN>;
        chomp($home);

	print "\nEnter Office No. : ";
        my $office = <STDIN>;
        chomp($office);

	print "\nEnter Permanent Address : ";
        my $permanent = <STDIN>;
        chomp($permanent);

	print "\nEnter Current Address : ";
        my $current = <STDIN>;
        chomp($current);
	
	my $obj = new family ( $pos , $fname , $lname ,$age,$mobile,$home,$office,$permanent, $current);
	
	push(@family ,$obj);

	print "\nMember Added Successfully....\n";

	}
	


	

	if($num == 2){
	my $num1;
	my $search;
		while($num1 != 5){
		print "\nChoose from the following : \n";	
		print "1. Search by First Name\n";
		print "2. Search by Last Name \n";
		print "3. Search by Position \n";
		print "4. Search by Mobile No. \n";
		print "5. Exit \n";
	
		$num1  = <STDIN>;
			if($num1 == 1){
			print " Enter First Name \n";
			$search = <STDIN>;
			chomp($search);
				foreach (@family){
					if ($search eq $_->getFirstName ){
					print "--------------------------------------\n";

					print "Position :". $_->getPosition." \n";
 				       	print "First Name :".  $_->getFirstName. "\n";
   			   		print "Last Name :".  $_->getLastName." \n";
					print "Age :".  $_->getAge." \n";
       				 	print "Mobile Phone :".  $_->getPhone(mobile)." \n";
					print "Home Phone :".  $_->getPhone(home)." \n";
 					print "Office Phone :". $_->getPhone(office)." \n";
 					print "Permanent Address :".  $_->getAddress(permanent)." \n";
 					print "Current Address :". $_->getAddress(current)." \n";
					}				
				}	
			}


			if($num1 == 2){
			print " Enter Last Name \n";
			$search = <STDIN>;
			chomp($search);
				foreach (@family){
					if ($search eq $_->getLastName ){
					print "--------------------------------------\n";

					print "Position :". $_->getPosition." \n";
 				       	print "First Name :".  $_->getFirstName. "\n";
   			   		print "Last Name :".  $_->getLastName." \n";
					print "Age :".  $_->getAge." \n";
       				 	print "Mobile Phone :".  $_->getPhone(mobile)." \n";
					print "Home Phone :".  $_->getPhone(home)." \n";
 					print "Office Phone :". $_->getPhone(office)." \n";
 					print "Permanent Address :".  $_->getAddress(permanent)." \n";
 					print "Current Address :". $_->getAddress(current)." \n";
					}				
				}	
			}


			if($num1 == 3){
			print " Enter Position \n";
			$search = <STDIN>;
			chomp($search);
				foreach (@family){
					if ($search eq $_->getPosition ){
					print "--------------------------------------\n";

					print "Position :". $_->getPosition." \n";
 				       	print "First Name :".  $_->getFirstName. "\n";
   			   		print "Last Name :".  $_->getLastName." \n";
					print "Age :".  $_->getAge." \n";
       				 	print "Mobile Phone :".  $_->getPhone(mobile)." \n";
					print "Home Phone :".  $_->getPhone(home)." \n";
 					print "Office Phone :". $_->getPhone(office)." \n";
 					print "Permanent Address :".  $_->getAddress(permanent)." \n";
 					print "Current Address :". $_->getAddress(current)." \n";
					}				
				}	
			}

			if($num1 == 4){
			print " Enter Mobile No. \n";
			$search = <STDIN>;
			chomp($search);
				foreach (@family){
					if ($search eq $_->getPhone(mobile) ){
					print "--------------------------------------\n";

					print "Position :". $_->getPosition." \n";
 				       	print "First Name :".  $_->getFirstName. "\n";
   			   		print "Last Name :".  $_->getLastName." \n";
					print "Age :".  $_->getAge." \n";
       				 	print "Mobile Phone :".  $_->getPhone(mobile)." \n";
					print "Home Phone :".  $_->getPhone(home)." \n";
 					print "Office Phone :". $_->getPhone(office)." \n";
 					print "Permanent Address :".  $_->getAddress(permanent)." \n";
 					print "Current Address :". $_->getAddress(current)." \n";
					}				
				}	
			}


		}


	
	}
	



	if($num ==4){
	my $num3;
		while($num3!=4){
		print "\n Choose from the following \n";
		print "1. Sort by First Name\n";
		print "2. Sort by Position \n";
		print "3. Sort by Age \n";
		print "4.Exit\n";
		$num3 =<STDIN>;
		my @sorted_family;

			if($num3 ==1){
			@sorted_family = sort { lc $a->getFirstName cmp lc $b->getFirstName } @family ;
				foreach (@sorted_family){
				print "--------------------------------------\n";

				print "Position :". $_->getPosition." \n";
				print "First Name :".  $_->getFirstName. "\n";
		      		print "Last Name :".  $_->getLastName." \n";
				print "Age :".  $_->getAge." \n";
				print "Mobile Phone :".  $_->getPhone(mobile)." \n";
				print "Home Phone :".  $_->getPhone(home)." \n";
		 		print "Office Phone :". $_->getPhone(office)." \n";
		 		print "Permanent Address :".  $_->getAddress(permanent)." \n";
		 		print "Current Address :". $_->getAddress(current)." \n";
		
				}
			}

			if($num3 ==2){
			@sorted_family = sort { lc $a->getPosition cmp lc $b->getPosition } @family ;
				foreach (@sorted_family){
				print "--------------------------------------\n";

				print "Position :". $_->getPosition." \n";
				print "First Name :".  $_->getFirstName. "\n";
		      		print "Last Name :".  $_->getLastName." \n";
				print "Age :".  $_->getAge." \n";
				print "Mobile Phone :".  $_->getPhone(mobile)." \n";
				print "Home Phone :".  $_->getPhone(home)." \n";
		 		print "Office Phone :". $_->getPhone(office)." \n";
		 		print "Permanent Address :".  $_->getAddress(permanent)." \n";
		 		print "Current Address :". $_->getAddress(current)." \n";
		
				}
			} 



			if($num3 ==3){
			my @sorted_family = sort { $a->getAge <=> $b->getAge } @family ;
				foreach (@sorted_family){
				print "--------------------------------------\n";

				print "Position :". $_->getPosition." \n";
				print "First Name :".  $_->getFirstName. "\n";
		      		print "Last Name :".  $_->getLastName." \n";
				print "Age :".  $_->getAge." \n";
				print "Mobile Phone :".  $_->getPhone(mobile)." \n";
				print "Home Phone :".  $_->getPhone(home)." \n";
		 		print "Office Phone :". $_->getPhone(office)." \n";
		 		print "Permanent Address :".  $_->getAddress(permanent)." \n";
		 		print "Current Address :". $_->getAddress(current)." \n";
		
				}
			}  
		}
	}


	if($num==3){
	print "Enter the position of the member \n";
	my $update =<STDIN>;
	chomp($update);
		foreach (@family){
			if($update eq $_->getPosition ){
			my $num2;
			while($num2 != 4){
			print "\nChoose from the following \n";
			print "1. Update Last Name \n";
			print "2. Update Age \n";
			print "3. Update Mobile No. \n";
			print "4. Back\n";
			$num2 =<STDIN>;
				if($num2==1){
				print "Enter new Last Name \n";
				my $name = <STDIN>;
				chomp($name);
				$_->setLastName($name);
				print " Last Name Updated \n";
				}


				if($num2 ==2){
				print "Enter new Age \n";
				my $age = <STDIN>;
				
				$_->setAge($age);
				print " Age Updated \n";
				}

				if($num2 ==3){
				print "Enter new Mobile No. \n";
				my $phone = <STDIN>;
				chomp($phone);
				$_->setPhone($phone , $_->getPhone(home) ,$_->getPhone(office));
				print " Mobile Phone Updated \n";
				}
			}		
			}
		}  
	}






	if($num == 5){
	
		foreach (@family){
		print "--------------------------------------\n";

		print "Position :". $_->getPosition." \n";
        	print "First Name :".  $_->getFirstName. "\n";
      		print "Last Name :".  $_->getLastName." \n";
		print "Age :".  $_->getAge." \n";
        	print "Mobile Phone :".  $_->getPhone(mobile)." \n";
		print "Home Phone :".  $_->getPhone(home)." \n";
 		print "Office Phone :". $_->getPhone(office)." \n";
 		print "Permanent Address :".  $_->getAddress(permanent)." \n";
 		print "Current Address :". $_->getAddress(current)." \n";
		
		}
	}


}
