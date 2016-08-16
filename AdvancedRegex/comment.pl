use strict;
use warnings;

#To extract an American telephone number of the form (202) 456-1111 from a string

my $phone_number = qr/
\(\d{3}\)(?#This is to match area code)
\s?(?#This is for space)
\d{3}-?\d{4}(?#This is to match local number)
/x;

print "Enter your contact information \n";
my $contact_info = <STDIN>;

if ($contact_info =~ /($phone_number)/) {
        print "Found a phone number $1";
}
else {
	print "No phone number found";
}