package VMOMI::VvolDatastoreInfo;
use parent 'VMOMI::DatastoreInfo';

our @class_ancestors = ( 
    'DatastoreInfo',
    'DynamicData',
);

our @class_members = ( 
    ['vvolDS', 'HostVvolVolume', 0, 1],
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
