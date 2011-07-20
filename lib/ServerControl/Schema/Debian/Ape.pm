#
# (c) Daniel Bäurer <daniel.baeurer@web.de>
# 
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:

package ServerControl::Schema::Debian::Ape;

use strict;
use warnings;

use ServerControl::Schema;
use base qw(ServerControl::Schema::Module);

__PACKAGE__->register(
	'aped'		=> '/opt/sc/opt/ape-1.0/usr/local/bin/aped',
	'lib'		=> '/opt/sc/opt/ape-1.0/usr/lib/ape',
);

1;
