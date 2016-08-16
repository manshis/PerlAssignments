use strict;
use warnings;

#To extract an American telephone number of the form (202) 456-1111 from a string
my $area_code    = qr/\(\d{3}\)/;
my $local_number = qr/\d{3}-?\d{4}/;
my $phone_number = qr/$area_code\s?$local_number/;

print "Enter your contact information \n";
my $contact_info = <STDIN>;

if ($contact_info =~ /(?<phone>$phone_number)/) {
        print "Found a phone number $+{phone}";
}
else {
	print "No phone number found";
}