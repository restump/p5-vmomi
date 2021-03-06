package VMOMI::VMwareDVSPortgroupPolicy;
use parent 'VMOMI::DVPortgroupPolicy';

use strict;
use warnings;

our @class_ancestors = ( 
    'DVPortgroupPolicy',
    'DynamicData',
);

our @class_members = ( 
    ['vlanOverrideAllowed', 'boolean', 0, ],
    ['uplinkTeamingOverrideAllowed', 'boolean', 0, ],
    ['securityPolicyOverrideAllowed', 'boolean', 0, ],
    ['ipfixOverrideAllowed', 'boolean', 0, 1],
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
