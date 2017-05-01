package VMOMI::VmUnsupportedStartingEvent;
use parent 'VMOMI::VmStartingEvent';

our @class_ancestors = ( 
    'VmStartingEvent',
    'VmEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['guestId', undef, 0, ],
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