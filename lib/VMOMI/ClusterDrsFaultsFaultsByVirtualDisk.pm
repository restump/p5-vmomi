package VMOMI::ClusterDrsFaultsFaultsByVirtualDisk;
use parent 'VMOMI::ClusterDrsFaultsFaultsByVm';

our @class_ancestors = ( 
    'ClusterDrsFaultsFaultsByVm',
    'DynamicData',
);

our @class_members = ( 
    ['disk', 'VirtualDiskId', 0, 1],
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
