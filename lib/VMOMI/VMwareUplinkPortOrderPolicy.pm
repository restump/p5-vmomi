package VMOMI::VMwareUplinkPortOrderPolicy;
use parent 'VMOMI::InheritablePolicy';

use strict;
use warnings;

our @class_ancestors = ( 
    'InheritablePolicy',
    'DynamicData',
);

our @class_members = ( 
    ['activeUplinkPort', undef, 1, 1],
    ['standbyUplinkPort', undef, 1, 1],
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
