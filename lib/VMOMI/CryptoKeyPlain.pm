package VMOMI::CryptoKeyPlain;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['keyId', 'CryptoKeyId', 0, ],
    ['algorithm', undef, 0, ],
    ['keyData', undef, 0, ],
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
