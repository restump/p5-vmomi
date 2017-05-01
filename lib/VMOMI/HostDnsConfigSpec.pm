package VMOMI::HostDnsConfigSpec;
use parent 'VMOMI::HostDnsConfig';

our @class_ancestors = ( 
    'HostDnsConfig',
    'DynamicData',
);

our @class_members = ( 
    ['virtualNicConnection', 'HostVirtualNicConnection', 0, 1],
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
