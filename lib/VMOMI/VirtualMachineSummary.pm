package VMOMI::VirtualMachineSummary;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, 1],
    ['runtime', 'VirtualMachineRuntimeInfo', 0, ],
    ['guest', 'VirtualMachineGuestSummary', 0, 1],
    ['config', 'VirtualMachineConfigSummary', 0, ],
    ['storage', 'VirtualMachineStorageSummary', 0, 1],
    ['quickStats', 'VirtualMachineQuickStats', 0, ],
    ['overallStatus', 'ManagedEntityStatus', 0, ],
    ['customValue', 'CustomFieldValue', 1, 1],
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
