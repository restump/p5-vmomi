#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use File::Find;
use Class::Unload;

use VMOMI;

my ($ns, $cl);

$ns = "VMOMI";

$cl = "ComplexType";
use_ok("$ns::$cl");
can_ok("$ns::$cl", "serialize");
can_ok("$ns::$cl", "deserialize");
can_ok("$ns::$cl", "get_class_ancestors");
can_ok("$ns::$cl", "get_class_members");
can_ok("$ns::$cl", "TO_JSON");

Class::Unload->unload("$ns::$cl");

$cl = "SimpleType";
use_ok("$ns::$cl");
can_ok("$ns::$cl", "serialize");
can_ok("$ns::$cl", "deserialize");
can_ok("$ns::$cl", "val");
can_ok("$ns::$cl", "TO_JSON");

Class::Unload->unload("$ns::$cl");

$cl = "SoapBase";
use_ok("$ns::$cl");
can_ok("$ns::$cl", "agent_string");
can_ok("$ns::$cl", "service_version");
can_ok("$ns::$cl", "service_namespace");
can_ok("$ns::$cl", "soap_call");
can_ok("$ns::$cl", "soap_node");
can_ok("$ns::$cl", "soap_fault");

Class::Unload->unload("$ns::$cl");


done_testing;