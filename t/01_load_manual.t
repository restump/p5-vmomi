#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use File::Find;
use Class::Unload;

use VMOMI;

require_ok('VMOMI');

find(\&wanted, 'lib-manual');

sub wanted {
    my ($class);
    return if $_ !~ m/\.pm$/;
    
    $_ =~ s/(\.pm)$//;
    $class = "VMOMI::" . $_ ;

    use_ok($class);
    Class::Unload->unload($class);
}


done_testing;