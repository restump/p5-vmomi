package VMOMI::IncompatibleHostForVmReplication;
use parent 'VMOMI::ReplicationFault';

our @class_ancestors = ( 
    'ReplicationFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['vmName', undef, 0, ],
    ['hostName', undef, 0, ],
    ['reason', undef, 0, ],
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
