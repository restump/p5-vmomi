package VMOMI::HealthUpdate;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['entity', 'ManagedObjectReference', 0, ],
    ['healthUpdateInfoId', undef, 0, ],
    ['id', undef, 0, ],
    ['status', 'ManagedEntityStatus', 0, ],
    ['remediation', undef, 0, ],
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
