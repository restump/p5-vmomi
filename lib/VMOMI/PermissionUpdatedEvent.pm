package VMOMI::PermissionUpdatedEvent;
use parent 'VMOMI::PermissionEvent';

our @class_ancestors = ( 
    'PermissionEvent',
    'AuthorizationEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['role', 'RoleEventArgument', 0, ],
    ['propagate', 'boolean', 0, ],
    ['prevRole', 'RoleEventArgument', 0, 1],
    ['prevPropagate', 'boolean', 0, 1],
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
