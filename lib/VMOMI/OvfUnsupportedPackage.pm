package VMOMI::OvfUnsupportedPackage;
use parent 'VMOMI::OvfFault';

our @class_ancestors = ( 
    'OvfFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['lineNumber', undef, 0, 1],
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
