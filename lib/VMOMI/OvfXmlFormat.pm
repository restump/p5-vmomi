package VMOMI::OvfXmlFormat;
use parent 'VMOMI::OvfInvalidPackage';

our @class_ancestors = ( 
    'OvfInvalidPackage',
    'OvfFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['description', undef, 0, ],
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
