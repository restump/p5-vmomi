package VMOMI::HostIncompatibleForFaultTolerance;
use parent 'VMOMI::VmFaultToleranceIssue';

our @class_ancestors = ( 
    'VmFaultToleranceIssue',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['hostName', undef, 0, 1],
    ['reason', undef, 0, 1],
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
