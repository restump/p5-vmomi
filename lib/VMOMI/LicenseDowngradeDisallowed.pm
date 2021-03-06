package VMOMI::LicenseDowngradeDisallowed;
use parent 'VMOMI::NotEnoughLicenses';

use strict;
use warnings;

our @class_ancestors = ( 
    'NotEnoughLicenses',
    'RuntimeFault',
    'MethodFault',
);

our @class_members = ( 
    ['edition', undef, 0, ],
    ['entityId', undef, 0, ],
    ['features', 'KeyAnyValue', 1, ],
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
