requires 'perl' => '5.010001';
requires 'URI';
requires 'Encode';
requires 'Class::Autouse';
requires 'Exception::Class';
requires 'HTTP::Cookies';
requires 'HTTP::Request';
requires 'IO::Socket::SSL';
requires 'LWP::ConnCache';
requires 'LWP::UserAgent';
requires 'LWP::Protocol::https';
requires 'Scalar::Util';
requires 'XML::LibXML';
requires 'XML::LibXML::Reader';

on 'test' => sub {
	requires 'Class::Unload';
	requires 'File::Find';
	requires 'Test::More';
}