use strict;
use warnings;

print "Say hello to foo.\n";
my $string = <STDIN>;

my $regex = qr/foo(?!bar)/;

if ( $string !~ $regex) {
print "My name is not foobar. Again say hello to me\n";
$string = <STDIN>;
}
if ( $string =~ $regex) {
print "Hi dear ! I am foo";
} 