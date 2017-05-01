package VMOMI::VirtualDiskPartitionedRawDiskVer2BackingOption;
use parent 'VMOMI::VirtualDiskRawDiskVer2BackingOption';

our @class_ancestors = ( 
    'VirtualDiskRawDiskVer2BackingOption',
    'VirtualDeviceDeviceBackingOption',
    'VirtualDeviceBackingOption',
    'DynamicData',
);

our @class_members = ( );

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
