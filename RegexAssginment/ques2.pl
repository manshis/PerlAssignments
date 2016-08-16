#!C/strawberry/perl/bin/perl


use strict;
use warnings;

print "Opening and reading file content... \n\n";

open ( FH ,"<file.txt") or die "File doesnot exist";
my @lines = <FH>;

print "Validating File Content....\n\n";

for ( my $i=1; $i<scalar(@lines); $i++){

my @details = split(",",$lines[$i]);


print "\nValidating user details of user : $details[1]  having id $details[0].... \n";

# checking Names are alphabetical
my $pattern1 = "[a-zA-Z]*[0-9]+";
if ( $details[1] =~/$pattern1/ ){
print "Name is Invalid. it should be alphabatic. \n";
}
else{
print "Name is Valid \n";
}

#checking Phone no should be numeric
my $pattern2 = "[a-zA-Z]+";
if ( $details[2] =~/$pattern2/ ){
print "Phone no is Invalid. It should be Numeric. \n";
}
elsif($details[2] =~/\b(\w{8}|\w{10})\b/ ){
print "Phone no is Valid \n";
}
else{
print "Phone No is Invalid. It should be either 8 or 10 digit long \n";
}


# checking User Id should be numeric
my $pattern3 = "[a-zA-Z]+";
if ( $details[0] =~/$pattern3/ ){
print "User Id is Invalid. It should be Numeric. \n";
}
else{
print "User Id is Valid \n";
}


# checking Email id
my $pattern4 = '[\w\-]+@[\w\-]+\.[\w\-]+';
if ( $details[3] =~/^$pattern4$/ ){
print "Email id is Valid. \n";
}
else{
print "Email Id is Invalid. \n";
}

#checking Age should be numeric
my $pattern5 = "[a-zA-Z]+";
if ( $details[4] =~/$pattern5/ ){
print "Age is Invalid. It should be Numeric. \n";
}
elsif($details[4] =~ /\b\w{2,3}\b/ ){
print "Age is  Valid \n";
}
else{
print "Age is Invalid. It should be of one to three digit \n";
}

}
