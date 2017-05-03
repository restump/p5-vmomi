package VMOMI::HostStorageSystem;
use parent 'VMOMI::ExtensibleManagedObject';

use strict;
use warnings;

our @class_ancestors = (
    'ExtensibleManagedObject',
    'ManagedObject',
);

our @class_members = (
    ['fileSystemVolumeInfo', 'HostFileSystemVolumeInfo', 0, 1],
    ['multipathStateInfo', 'HostMultipathStateInfo', 0, 0],
    ['storageDeviceInfo', 'HostStorageDeviceInfo', 0, 0],
    ['systemFile', undef, 1, 0],
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