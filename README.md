# NAME

VMOMI - VMware vSphere API Perl Bindings

# SYNOPSIS

    use VMOMI;

    stub = new VMOMI::SoapStub(host => $host) || die "Failed to initialize VMOMI::SoapStub";
    $instance = new VMOMI::ServiceInstance(
        $stub, 
        new VMOMI::ManagedObjectReference(
            type  => 'ServiceInstance',
            value => 'ServiceInstance',
        ),
    );

    # Login
    $content = $instance->RetrieveServiceContent;
    $session = $content->sessionManager->Login(userName => $user, password => $pass);

    @vms = VMOMI::find_entities($content, 'VirtualMachine');
    foreach (@vms) {
        print $_->name . ", " . $_->config->guestFullName . "\n";
    }

    # Logout
    $content->sessionManager->Logout();

# INSTALLATION

    cpanm install VMOMI

# DESCRIPTION

VMOMI provides an alternative to the VMware Perl SDK for vSphere and was created to address
some limitations with the offical VMware Perl SDK.

- **Preserve main:: namespace by avoid globals and the import of all API classes**
- **Reduce memory footprint through [Class::Autouse](https://metacpan.org/pod/Class::Autouse)**
- **Enable installation through CPAN**

## Finding managed entities

Managed entities in the VMware vSphere Web Service inventory, e.g. VirtualMachine or HostSystem, can be
fetched with the utilty function **VMOMI::find\_entities()**:

    @vms = VMOMI::find_entities($content, 'VirtualMachine', { 'config.guestFullName' => qr/Linux/ });
    @hosts = VMOMI::find_entities($content, 'HostSystem');

**$content** should be an authenticated instance of VMOMI::ServiceContent:

    $stub = new VMOMI::SoapStub(host => $host);
    $instance = new VMOMI::ServiceInstance(
        $stub, 
        new VMOMI::ManagedObjectReference(
            type  => 'ServiceInstance',
            value => 'ServiceInstance',
        ),
    );
    $content = $instance->RetrieveServiceContent;
    $session = $content->sessionManager->Login(userName => $user, password => $pass);

## ManagedObjectReferences

The VMware vSphere Web Service API primarily works through ManagedObjectReferences (moref). Most SDKs
therefore generate "view classes" of the common objects managed through the API, e.g. VirtualMachine,
HostSystem, Folder, Datacenter, ClusterComputeResource, etc.

VMOMI provides similar, manually generated classes for these managed objects.  During deserialization
of the vSphere Web Service API, ManagedObjectReferences are automatically instantiated to corresponding
"view classes". The underlying ManagedObjectReference can be accessed through the **moref** property.
ManagedObjectReferences have two properties **type** and **value**:

    $vm = VMOMI::find_entities($content, 'VirtualMachine', { name => qr/TestVM2/ })->shift;
    $moref = $vm->moref;
    print $moref->type . ":" . $moref->value . "\n"; # 'VirtualMachine:vm-12'

"View" classes can instantiated using known, valid ManagedObjectReference type and value properties along
with a current, authenticated connection stub:

    $vm = new VMOMI::VirtualMachine(
        $stub, 
        new VMOMI::ManagedObjectReference
            type => 'VirtualMachine', 
            value => 'vm-12'),
    );
    print $vm->name . "\n"; # TestVM2

## Performance

Properties are only retrieved from the vSphere Web Services API on access through AUTOLOAD, and as such
can impact performance in iterations. The following logic will invoke three API calls to vSphere for each 
virtual machine:

    @vms = VMOMI::find_entities($content, 'VirtualMachine');
    foreach (@vms) {
        print $_->name . ": " . $_->runtime->powerState . "\n"; # three API invocations
    }

As future enhancement, preserving values previously fetched from the API to avoid reptitive calls would
improve performance. As a work around, pulling requested properties in bulk through 
**PropertyCollector.RetrievePropertiesEx** or **PropertyCollector.WaitForUpdatesEx** and parsing them into 
a data structure will provide the best performance.

# AUTHOR

Reuben M. Stump

reuben.stump@gmail.com

# SEE ALSO

[VMware vSphere Web Services SDK Documentation](https://www.vmware.com/support/developer/vc-sdk/)

[vSphere SDK for Perl Documentation](https://www.vmware.com/support/developer/viperltoolkit/)

# COPYRIGHT and LICENSE

Copyright (c) 2015 by Reuben M. Stump

This code is distributed under the Apache 2 License. The full text of the license can be found in the 
LICENSE file included with this module.
