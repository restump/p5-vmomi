package VMOMI::ClusterPowerOnVmResult;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['attempted', 'ClusterAttemptedVmInfo', 1, 1],
    ['notAttempted', 'ClusterNotAttemptedVmInfo', 1, 1],
    ['recommendations', 'ClusterRecommendation', 1, 1],
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
