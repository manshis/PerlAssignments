package address;

sub new {
my $class = shift;
my $self = {
	_permanent => $_[0],
	_current => $_[1]
	};
	
	bless $self , $class ;
	return $self;
	
}

sub setPermanent {
my ($self, $permanent) = @_ ;
$self->{_permanent} = $permanent;
return $self->{_permanent};
}

sub getPermanent {
my ($self) = @_;
return $self->{_permanent};
}

sub setCurrent {
my ($self, $current) = @_;
$self->{_current} = $current;
return $self->{_current};
}

sub getCurrent {
my ($self) = @_;
return $self->{_current};
}
1;
