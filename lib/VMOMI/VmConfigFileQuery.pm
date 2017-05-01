package VMOMI::VmConfigFileQuery;
use parent 'VMOMI::FileQuery';

our @class_ancestors = ( 
    'FileQuery',
    'DynamicData',
);

our @class_members = ( 
    ['filter', 'VmConfigFileQueryFilter', 0, 1],
    ['details', 'VmConfigFileQueryFlags', 0, 1],
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
