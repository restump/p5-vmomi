package VMOMI::InvalidDrsBehaviorForFtVm;
use parent 'VMOMI::InvalidArgument';

our @class_ancestors = ( 
    'InvalidArgument',
    'RuntimeFault',
    'MethodFault',
);

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, ],
    ['vmName', undef, 0, ],
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
