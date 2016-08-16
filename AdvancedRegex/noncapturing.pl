use strict;
use warnings;


print "Enter your name with year of your birth e.g Mansi 1990\n ";

my $input= <STDIN>;

my $regex = qr/(\w+)\s?(?:\d{4})/;

if ($input =~ $regex ){
	print "Your name is $1 and year of birth is ";
 	if (! defined $2){
		print "undef. \n Sorry ! Year of birth cannot be disclosed";
	}
	else {
		print $2;
	}
}
else {
	print "Invalid input";
}