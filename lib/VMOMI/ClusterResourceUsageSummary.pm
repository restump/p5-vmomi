package VMOMI::ClusterResourceUsageSummary;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['cpuUsedMHz', undef, 0, ],
    ['cpuCapacityMHz', undef, 0, ],
    ['memUsedMB', undef, 0, ],
    ['memCapacityMB', undef, 0, ],
    ['storageUsedMB', undef, 0, ],
    ['storageCapacityMB', undef, 0, ],
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
