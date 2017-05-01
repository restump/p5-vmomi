package VMOMI::PodDiskLocator;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['diskId', undef, 0, ],
    ['diskMoveType', undef, 0, 1],
    ['diskBackingInfo', 'VirtualDeviceBackingInfo', 0, 1],
    ['profile', 'VirtualMachineProfileSpec', 1, 1],
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
