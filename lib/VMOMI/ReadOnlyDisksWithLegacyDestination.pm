package VMOMI::ReadOnlyDisksWithLegacyDestination;
use parent 'VMOMI::MigrationFault';

our @class_ancestors = ( 
    'MigrationFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['roDiskCount', undef, 0, ],
    ['timeoutDanger', 'boolean', 0, ],
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
