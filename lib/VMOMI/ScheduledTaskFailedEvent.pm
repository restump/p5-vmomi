package VMOMI::ScheduledTaskFailedEvent;
use parent 'VMOMI::ScheduledTaskEvent';

our @class_ancestors = ( 
    'ScheduledTaskEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['reason', 'LocalizedMethodFault', 0, ],
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
