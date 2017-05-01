package VMOMI::VirtualDeviceFileBackingOption;
use parent 'VMOMI::VirtualDeviceBackingOption';

our @class_ancestors = ( 
    'VirtualDeviceBackingOption',
    'DynamicData',
);

our @class_members = ( 
    ['fileNameExtensions', 'ChoiceOption', 0, 1],
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
