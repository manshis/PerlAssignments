#!C/strawberry/perl/bin/perl

$we= "u&me";
@var= split('&',$we);

print $var[0];


$us = join('-',@var);

print $us;