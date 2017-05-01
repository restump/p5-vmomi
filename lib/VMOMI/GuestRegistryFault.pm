package VMOMI::GuestRegistryFault;
use parent 'VMOMI::GuestOperationsFault';

our @class_ancestors = ( 
    'GuestOperationsFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['windowsSystemErrorCode', undef, 0, ],
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
