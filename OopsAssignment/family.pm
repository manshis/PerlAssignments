package family;

use address;
use phone;

sub new{
my $class =shift;
my $phone = new phone($_[4] ,$_[5],$_[6]);

my $add = new address($_[7],$_[8]);
my $self = {
	_position => $_[0],
	_firstName => $_[1],
	_lastName => $_[2],
	_age => $_[3],
	_phoneNo => $phone,
	_address=> $add,
};
	bless $self, $class;
	return $self;
}

sub setPosition {
    my ( $self, $position ) = @_;
    $self->{_position} = $position;
    return $self->{_position};
}

sub getPosition {
    my( $self ) = @_;
    return $self->{_position};
}


sub setFirstName {
    my ( $self, $firstName ) = @_;
    $self->{_firstName} = $firstName ;
    return $self->{_firstName};
}

sub getFirstName {
    my( $self ) = @_;
    return $self->{_firstName};
}

sub setLastName {
    my ( $self, $lastName ) = @_;
    $self->{_lastName} = $lastName ;
    return $self->{_lastName};
}

sub getLastName {
    my( $self ) = @_;
    return $self->{_lastName};
}

sub setAge {
    my ( $self, $age ) = @_;
    $self->{_age} = $age ;
    return $self->{_age};
}

sub getAge {
    my( $self ) = @_;
    return $self->{_age};
}

sub setPhone {
    my ( $self, $mobile , $home , $office ) = @_;
    $self->{_phoneNo} = new phone($mobile, $home, $office) ;
    return $self->{_phoneNo};;
}

sub getPhone {
	my( $self, $value ) = @_;
	if ($value eq mobile ){


	return $self->{_phoneNo}->getMobile ;
	}
	elsif($value eq home){
	return $self->{_phoneNo}->getHome;
	}
	elsif($value eq office){
	return $self->{_phoneNo}->getOffice;
	}

}

sub setAddress {
    my ( $self, $permanent , $current  ) = @_;
    $self->{_address} = new phone($permanent ,$current) ;
    return $self->{_address};
}

sub getAddress {
	my( $self, $value ) = @_;
        if ($value eq permanent ){
       return $self->{_address}->getPermanent ;
        }
        elsif($value eq current){
       return $self->{_address}->getCurrent;
        }

}

1;
