package VMOMI::VmDiskFileQueryFilter;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['diskType', undef, 1, 1],
    ['matchHardwareVersion', undef, 1, 1],
    ['controllerType', undef, 1, 1],
    ['thin', 'boolean', 0, 1],
    ['encrypted', 'boolean', 0, 1],
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
