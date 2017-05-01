package VMOMI::DynamicProperty;
use parent 'VMOMI::ComplexType';

our @class_ancestors = ( );

our @class_members = ( 
    ['name', undef, 0, ],
    ['val', 'anyType', 0, ],
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
