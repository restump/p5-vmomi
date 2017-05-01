package VMOMI::AfterStartupTaskScheduler;
use parent 'VMOMI::TaskScheduler';

our @class_ancestors = ( 
    'TaskScheduler',
    'DynamicData',
);

our @class_members = ( 
    ['minute', undef, 0, ],
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
