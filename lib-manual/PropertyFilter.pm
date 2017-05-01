package VMOMI::PropertyFilter;
use parent 'VMOMI::ManagedObject';

our @class_ancestors = (
    'ManagedObject',
);

our @class_members = (
    ['partialUpdates', boolean, 0, 1], 
    ['spec', 'PropertyFilterSpec', 0, 1], 
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