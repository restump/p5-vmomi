package VMOMI::VirtualMachineIdeDiskDeviceInfo;
use parent 'VMOMI::VirtualMachineDiskDeviceInfo';

our @class_ancestors = ( 
    'VirtualMachineDiskDeviceInfo',
    'VirtualMachineTargetInfo',
    'DynamicData',
);

our @class_members = ( 
    ['partitionTable', 'VirtualMachineIdeDiskDevicePartitionInfo', 1, 1],
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
