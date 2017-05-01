package VMOMI::SecurityProfile;
use parent 'VMOMI::ApplyProfile';

our @class_ancestors = ( 
    'ApplyProfile',
    'DynamicData',
);

our @class_members = ( 
    ['permission', 'PermissionProfile', 1, 1],
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
