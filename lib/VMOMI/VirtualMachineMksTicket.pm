package VMOMI::VirtualMachineMksTicket;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['ticket', undef, 0, ],
    ['cfgFile', undef, 0, ],
    ['host', undef, 0, 1],
    ['port', undef, 0, 1],
    ['sslThumbprint', undef, 0, 1],
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
