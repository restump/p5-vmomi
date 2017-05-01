package VMOMI::HostLowLevelProvisioningManagerFileReserveSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['baseName', undef, 0, ],
    ['parentDir', undef, 0, ],
    ['fileType', undef, 0, ],
    ['storageProfile', undef, 0, ],
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
