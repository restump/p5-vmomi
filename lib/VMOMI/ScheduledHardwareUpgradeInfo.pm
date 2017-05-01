package VMOMI::ScheduledHardwareUpgradeInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['upgradePolicy', undef, 0, 1],
    ['versionKey', undef, 0, 1],
    ['scheduledHardwareUpgradeStatus', undef, 0, 1],
    ['fault', 'LocalizedMethodFault', 0, 1],
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
