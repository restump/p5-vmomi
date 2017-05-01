package VMOMI::DVSSelection;
use parent 'VMOMI::SelectionSet';

our @class_ancestors = ( 
    'SelectionSet',
    'DynamicData',
);

our @class_members = ( 
    ['dvsUuid', undef, 0, ],
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
