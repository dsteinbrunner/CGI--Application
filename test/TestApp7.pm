# $Id: TestApp7.pm,v 1.2 2004/01/31 23:33:28 mark Exp $

package TestApp7;

use strict;

use CGI::Application;
@TestApp7::ISA = qw(CGI::Application);

use CGI::Carp;


sub setup {
	my $self = shift;

	$self->run_modes(
		testcgi_mode => 'testcgi_mode'
	);
}


sub cgiapp_get_query {
	my $self = shift;

	require TestCGI;
	my $q = TestCGI->new();

	return $q;
}


####  Run Mode Methods

sub testcgi_mode {
	my $self = shift;

	my $output = "Hello World: testcgi_mode OK";

	return \$output;
}


1;
