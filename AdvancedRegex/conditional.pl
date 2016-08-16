use strict;
use warnings;

my $regex = qr/^(?(?=q)qu|f)/;

my @words = ('quake', 'qwerty' , 'foo', 'bar');
my @valid;
for (@words) {
	if ($_ =~ $regex) {
		push @valid, $_;
	}
}

print "Valid words : @valid";