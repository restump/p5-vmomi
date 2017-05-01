package VMOMI::InsufficientStandbyCpuResource;
use parent 'VMOMI::InsufficientStandbyResource';

our @class_ancestors = ( 
    'InsufficientStandbyResource',
    'InsufficientResourcesFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['available', undef, 0, ],
    ['requested', undef, 0, ],
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
