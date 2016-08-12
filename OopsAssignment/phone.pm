package phone;

sub new{
my $class = shift ;
my $self = {
	_mobile => $_[0],
	_home => $_[1],
	_office => $_[2]
	}; 
	bless $self , $class;
	return $self;
	
}
sub setMobile {
    my ( $self, $mobile ) = @_;
    $self->{_mobile} = $mobile;
    return $self->{_mobile};
}

sub getMobile {
    my( $self ) = @_;
    return $self->{_mobile};
}


sub setHome {
    my ( $self, $home ) = @_;
    $self->{_home} = $home;
    return $self->{_home};
}

sub getHome {
    my( $self ) = @_;
    return $self->{_home};
}

sub setOffice {
    my ( $self, $office ) = @_;
    $self->{_office} = $office ;
    return $self->{_office};
}

sub getOffice {
    my( $self ) = @_;
    return $self->{_office};
}




1;
