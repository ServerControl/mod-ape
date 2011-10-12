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
	'aped'		=> '/usr/bin/aped',
	'lib'		=> '/usr/lib/ape',
);

1;
