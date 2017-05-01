package VMOMI::VirtualMachineNetworkInfo;
use parent 'VMOMI::VirtualMachineTargetInfo';

our @class_ancestors = ( 
    'VirtualMachineTargetInfo',
    'DynamicData',
);

our @class_members = ( 
    ['network', 'NetworkSummary', 0, ],
    ['vswitch', undef, 0, 1],
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