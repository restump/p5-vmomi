package VMOMI::HostVMotionSystem;
use parent 'VMOMI::ExtensibleManagedObject';

our @class_ancestors = (
    'ExtensibleManagedObject',
    'ManagedObject',
);

our @class_members = (
    ['ipConfig', 'HostIpConfig', 0, 0],
    ['netConfig', 'HostVMotionNetConfig', 0, 0],
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