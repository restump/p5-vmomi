package VMOMI::CustomizationIPSettings;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['ip', 'CustomizationIpGenerator', 0, ],
    ['subnetMask', undef, 0, 1],
    ['gateway', undef, 1, 1],
    ['ipV6Spec', 'CustomizationIPSettingsIpV6AddressSpec', 0, 1],
    ['dnsServerList', undef, 1, 1],
    ['dnsDomain', undef, 0, 1],
    ['primaryWINS', undef, 0, 1],
    ['secondaryWINS', undef, 0, 1],
    ['netBIOS', 'CustomizationNetBIOSMode', 0, 1],
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
