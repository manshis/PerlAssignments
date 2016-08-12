#!C/strawberry/perl/bin/perl


@array = ('apple', 'mango', 'orange');

$push= push(@array,'grapes');              #add new element at the end and returns the total no of elemnts
print "@array \n";
print "$push \n";


$pop= pop(@array);			#removes the last element and return it
print "@array \n";
print "$pop \n";


$unshift=unshift(@array,'pineapple');		 #add new element at the beginning and returns the total no of elemnts
print "@array \n";
print "$unshift \n";


$shift=shift(@array);				#removes the first element and return it
print "@array \n";
print "$shift \n";