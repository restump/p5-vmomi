package VMOMI::AlarmScriptCompleteEvent;
use parent 'VMOMI::AlarmEvent';

use strict;
use warnings;

our @class_ancestors = ( 
    'AlarmEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['entity', 'ManagedEntityEventArgument', 0, ],
    ['script', undef, 0, ],
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
