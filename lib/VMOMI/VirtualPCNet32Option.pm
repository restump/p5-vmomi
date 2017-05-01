package VMOMI::VirtualPCNet32Option;
use parent 'VMOMI::VirtualEthernetCardOption';

our @class_ancestors = ( 
    'VirtualEthernetCardOption',
    'VirtualDeviceOption',
    'DynamicData',
);

our @class_members = ( 
    ['supportsMorphing', 'boolean', 0, ],
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
