package VMOMI::OvfManagerCommonParams;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['locale', undef, 0, ],
    ['deploymentOption', undef, 0, ],
    ['msgBundle', 'KeyValue', 1, 1],
    ['importOption', undef, 1, 1],
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
