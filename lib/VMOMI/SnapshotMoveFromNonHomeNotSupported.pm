package VMOMI::SnapshotMoveFromNonHomeNotSupported;
use parent 'VMOMI::SnapshotCopyNotSupported';

our @class_ancestors = ( 
    'SnapshotCopyNotSupported',
    'MigrationFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( );

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
