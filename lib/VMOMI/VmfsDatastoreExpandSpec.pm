package VMOMI::VmfsDatastoreExpandSpec;
use parent 'VMOMI::VmfsDatastoreSpec';

our @class_ancestors = ( 
    'VmfsDatastoreSpec',
    'DynamicData',
);

our @class_members = ( 
    ['partition', 'HostDiskPartitionSpec', 0, ],
    ['extent', 'HostScsiDiskPartition', 0, ],
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
