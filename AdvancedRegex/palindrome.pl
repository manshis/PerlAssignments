use strict;   
use warnings; 

my $patern = qr/^(\W* (?: (\w) (?1) \g{-1} | \w? ) \W*)$/ix; #regex to check palindrome

for my $s ( "nitin", "A man, a plan, a canal: Panama!", "abc" ){
	print "'$s' is a palindrome\n" if $s =~ /$patern/;
}

