package VMOMI::ImportSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['entityConfig', 'VAppEntityConfigInfo', 0, 1],
    ['instantiationOst', 'OvfConsumerOstNode', 0, 1],
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