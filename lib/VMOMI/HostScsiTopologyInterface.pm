package VMOMI::HostScsiTopologyInterface;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, ],
    ['adapter', undef, 0, ],
    ['target', 'HostScsiTopologyTarget', 1, 1],
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