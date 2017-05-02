#!/usr/bin/perl

use strict;
use warnings;

use lib 'lib';

use VMOMI;
use Getopt::Long;

my ($host, $user, $pass, $instance, $content, $session, @vms);

$user = undef;
$pass = undef;
$host = 'localhost';

GetOptions(
	"user=s" => \$user,
	"pass=s" => \$pass,
	"host=s" => \$host,
);

die "Must specify user and pass parameters" if not (defined $user and defined $pass);

my $stub = new VMOMI::SoapStub(host => $host) || die "Failed to initialize SoapStub";

$instance = new VMOMI::ServiceInstance(
    $stub, 
    new VMOMI::ManagedObjectReference(
        type  => 'ServiceInstance',
        value => 'ServiceInstance',
    ),
);

# Login
$content = $instance->RetrieveServiceContent(_this => $instance);
$session = $content->sessionManager->Login(userName => $user, password => $pass);


@vms = VMOMI::find_entities($content, 'VirtualMachine');
foreach (@vms) {
    print $_->name . "\n";
}

# Logout
$content->sessionManager->Logout();
