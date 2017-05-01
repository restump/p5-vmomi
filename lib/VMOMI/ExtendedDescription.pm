package VMOMI::ExtendedDescription;
use parent 'VMOMI::Description';

our @class_ancestors = ( 
    'Description',
    'DynamicData',
);

our @class_members = ( 
    ['messageCatalogKeyPrefix', undef, 0, ],
    ['messageArg', 'KeyAnyValue', 1, 1],
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
