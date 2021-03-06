package VMOMI::ClusterStatusChangedEvent;
use parent 'VMOMI::ClusterEvent';

use strict;
use warnings;

our @class_ancestors = ( 
    'ClusterEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['oldStatus', undef, 0, ],
    ['newStatus', undef, 0, ],
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
