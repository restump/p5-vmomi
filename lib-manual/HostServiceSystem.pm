package VMOMI::HostServiceSystem;
use parent 'VMOMI::ExtensibleManagedObject';

use strict;
use warnings;

our @class_ancestors = (
    'ExtensibleManagedObject',
    'ManagedObject',
);

our @class_members = (
    ['serviceInfo', 'HostServiceInfo', 0, 1],
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