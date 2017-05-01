package VMOMI::ServiceManagerServiceInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['serviceName', undef, 0, ],
    ['location', undef, 1, 1],
    ['service', 'ManagedObjectReference', 0, ],
    ['description', undef, 0, ],
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
