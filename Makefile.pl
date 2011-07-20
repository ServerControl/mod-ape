use ExtUtils::MakeMaker;

WriteMakefile(
	NAME		=> 'ServerControl-Ape',
	VERSION_FROM	=> 'lib/ServerControl/Module/Ape.pm',
	PREREQ_PM	=> { 'ServerControl' => '0.90' },
	LICENSE		=> 'bsd'
);
