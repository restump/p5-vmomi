package VMOMI;

use 5.006;
use strict;
use warnings;

our $VERSION = 0.01;

use Class::Autouse;
use Exception::Class(
    'Exception',
    'Exception::SoapFault' => {
        isa     => 'Exception',
        fields  => [ 'faultcode', 'detail', 'faultstring' ] },
    'Exception::Autoload' => {
        isa     => 'Exception' },
    'Exception::Deserialize' => {
        isa     => 'Exception' },
    'Exception::Serialize' => {
        isa     => 'Exception' },
    'Exception::Protocol' => {
        isa     => 'Exception' },
);

Class::Autouse->autouse_recursive("VMOMI");

# TODO: Add support for multiple entity types in single call, e.g. 'HostSystem', 'VirtualMachine' & 'Folder'
# TODO: Add support for multiple matches, e.g. 'name' and 'config.guestFullName'
sub find_entities {
    my ($content, $type, $match, $begin, %args) = @_;
    my (@properties, $spec, $view, $filter_spec, $result, @objects, @matched);

    $begin = $content->rootFolder unless defined $begin;
    @properties = keys %$match if defined $match;

    # PropertySpec
    $spec = new VMOMI::PropertySpec(type => $type, all => 0);
    if (defined $match) {
        $spec->pathSet(\@properties);
    }

    $view = $content->viewManager->CreateContainerView(
        type => [$type],
        recursive => 1,
        container => $begin->moref,
    );


    $filter_spec = new VMOMI::PropertyFilterSpec(
        reportMissingInResults => 0,
        propSet => [ new VMOMI::PropertySpec(
            all => 0,
            type => $type,
            pathSet => \@properties,
        )],
        objectSet => [ new VMOMI::ObjectSpec(
            obj => $view,
            skip => 0,
            selectSet => [ new VMOMI::TraversalSpec(
                path => "view",
                type => $view->{type},
            )],
        )],
    );

    $result = $content->propertyCollector->RetrievePropertiesEx(
        specSet => [$filter_spec],
        options => new VMOMI::RetrieveOptions(),
    );

    push @objects, @{ $result->objects || [ ] };
    while (defined $result->token) {
        $result = $content->propertyCollector->ContinueRetrievePropertiesEx(token => $result->token);
        push @objects, @{ $result->objects || [ ] };
    }


    unless (defined $match) {
        @matched = map { $_->obj } @objects;
        return @matched;
    }

    foreach my $object (@objects) {
        my (%pset);
        
        %pset = map { $_->name => $_->val } @{ $object->{propSet} || [ ] };
        foreach (@properties) {
            my $re = $match->{$_};

            if (not defined $re and not defined $pset{$_}) {
                push @matched, $object->obj;
            } # check if $re or $pset{$_} are undef to avoid compare errors

            if ($pset{$_} =~ /$re/) {
                push @matched, $object->obj;
            }
        }
    }
    return @matched;

}

1;

=encoding UTF-8

=head1 NAME

VMOMI - VMware vSphere API Perl Bindings

=head1 SYNOPSIS

use VMOMI;
$stub = new VMOMI::SoapStub(host => $host) || die "Failed to initialize SoapStub";
$si = new VMOMI::ServiceInstance($stub, 
    new VMOMI::ManagedObjectReference(
        type => 'ServiceInstance', 
        value => 'ServiceInstance' ),
);
$content = $si->RetrieveServiceContent(_this => $si);
$sm = $content->sessionManager;
$session = $sm->Login(userName => $user, password => $pass);

=head1 DESCRIPTION

