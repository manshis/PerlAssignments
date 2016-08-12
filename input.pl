#!C/strawberry/perl/bin/perl

print "Enter ur name : ";
$name = <STDIN>;
chomp($name);
#print "Your name is $name";

if($name eq 'Mansi'){
print "Hello admin";
}
else{
print "Hello user";
}