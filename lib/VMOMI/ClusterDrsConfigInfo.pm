package VMOMI::ClusterDrsConfigInfo;
use parent 'VMOMI::DynamicData';

use strict;
use warnings;

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['enabled', 'boolean', 0, 1],
    ['enableVmBehaviorOverrides', 'boolean', 0, 1],
    ['defaultVmBehavior', 'DrsBehavior', 0, 1],
    ['vmotionRate', undef, 0, 1],
    ['option', 'OptionValue', 1, 1],
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
