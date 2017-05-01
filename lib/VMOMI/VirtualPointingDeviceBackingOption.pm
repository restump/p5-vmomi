package VMOMI::VirtualPointingDeviceBackingOption;
use parent 'VMOMI::VirtualDeviceDeviceBackingOption';

our @class_ancestors = ( 
    'VirtualDeviceDeviceBackingOption',
    'VirtualDeviceBackingOption',
    'DynamicData',
);

our @class_members = ( 
    ['hostPointingDevice', 'ChoiceOption', 0, ],
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
