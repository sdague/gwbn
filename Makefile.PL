use 5.010000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Gwbn',
    VERSION_FROM      => 'lib/Gwbn.pm', # finds $VERSION
    EXE_FILES => [qw(gwbn)],
    PREREQ_PM         => {
        Gnome2::Wnck => 0.16,
        Gtk2 => 1
    }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Gwbn.pm', # retrieve abstract from module
       AUTHOR         => 'Sean Dague <sean@dague.net>') : ()),
);
