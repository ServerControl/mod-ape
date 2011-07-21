#
# (c) Daniel Bäurer <daniel.baeurer@web.de>
# 
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:

package ServerControl::Module::Ape;

use strict;
use warnings;

our $VERSION = '0.94';

use ServerControl::Module;
use ServerControl::Commons::Process;

use base qw(ServerControl::Module);

__PACKAGE__->Implements( 
	qw(ServerControl::Module::PidFile)
);

__PACKAGE__->Parameter(
	help  => { isa => 'bool', call => sub { __PACKAGE__->help; } },
);

sub help {
	my ($class) = @_;

	print __PACKAGE__ . " " . $ServerControl::Module::Ape::VERSION . "\n";

	printf "  %-30s%s\n", "--name=", "Instance Name";
	printf "  %-30s%s\n", "--path=", "The path where the instance should be created";
	printf "  %-30s%s\n", "--user=", "Ape User";
	printf "  %-30s%s\n", "--group=", "Ape Group";
	print  "\n";
	printf "  %-30s%s\n", "--create", "Create the instance";
	printf "  %-30s%s\n", "--start", "Start the instance";
	printf "  %-30s%s\n", "--stop", "Stop the instance";
}

sub start {
	my ($class) = @_;

	my ($name, $path)	= ($class->get_name, $class->get_path);

	my $exec_file		= ServerControl::FsLayout->get_file("Exec", "aped");
	my $conf_file		= ServerControl::FsLayout->get_file("Configuration", "conf");

	spawn("$path/$exec_file --cfg $conf_file");
}

1;
