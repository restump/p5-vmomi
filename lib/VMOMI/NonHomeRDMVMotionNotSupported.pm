package VMOMI::NonHomeRDMVMotionNotSupported;
use parent 'VMOMI::MigrationFeatureNotSupported';

our @class_ancestors = ( 
    'MigrationFeatureNotSupported',
    'MigrationFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['device', undef, 0, ],
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
