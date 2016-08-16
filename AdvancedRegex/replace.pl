use strict;   
use warnings; 



my $text = "<html><body><a> I am mansi </a></body> </html>";
$text =~ s/<.+?>/ /g;  
print $text ;