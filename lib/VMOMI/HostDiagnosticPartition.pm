package VMOMI::HostDiagnosticPartition;
use parent 'VMOMI::DynamicData';

use strict;
use warnings;

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['storageType', undef, 0, ],
    ['diagnosticType', undef, 0, ],
    ['slots', undef, 0, ],
    ['id', 'HostScsiDiskPartition', 0, ],
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
