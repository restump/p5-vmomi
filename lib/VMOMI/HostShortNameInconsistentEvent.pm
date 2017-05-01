package VMOMI::HostShortNameInconsistentEvent;
use parent 'VMOMI::HostDasEvent';

our @class_ancestors = ( 
    'HostDasEvent',
    'HostEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['shortName', undef, 0, ],
    ['shortName2', undef, 0, ],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
