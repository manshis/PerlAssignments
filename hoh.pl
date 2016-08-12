#!C/strawberry/perl/bin/perl

my $HoA = {
   flintstones    => {ram=>123},
   jetsons        => 12,
   simpsons       => 23,
};

foreach my $key (keys %$HoA) {
	print " KEY: ".$key."\n";
	
	if(ref $HoA->{$key} eq 'HASH')
	{

	foreach my $key1 (keys %{$HoA->{$key}})
	{

        	print "VALUE : key:".$key1."-- value:".$HoA->{$key}{$key1}."\n";
	}
	}
	else{
	
		print "VALUE : $HoA->{$key} \n";
	
	}
}