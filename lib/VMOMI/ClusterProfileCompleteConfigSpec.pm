package VMOMI::ClusterProfileCompleteConfigSpec;
use parent 'VMOMI::ClusterProfileConfigSpec';

our @class_ancestors = ( 
    'ClusterProfileConfigSpec',
    'ClusterProfileCreateSpec',
    'ProfileCreateSpec',
    'DynamicData',
);

our @class_members = ( 
    ['complyProfile', 'ComplianceProfile', 0, 1],
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
