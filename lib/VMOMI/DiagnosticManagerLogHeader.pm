package VMOMI::DiagnosticManagerLogHeader;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['lineStart', undef, 0, ],
    ['lineEnd', undef, 0, ],
    ['lineText', undef, 1, 1],
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
