package Gwbn;

use 5.010000;
use strict;
use warnings;
use Gtk2 -init;
use Gnome2::Wnck;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Gwbn ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
                    window_matches
                    goto_window
);

our $VERSION = '1.00';

our $screen = Gnome2::Wnck::Screen->get_default();
$screen->force_update();

sub window_matches {
    my ($regex) = @_;
    my @matches = ();

    my @windows = $screen->get_windows;
    foreach my $win (@windows) {
        #print $win->get_name, "\n";
        if ($win->get_name =~ /$regex/i) {
            #print "\tMATCH\n";
            push @matches, $win;
        }
    }
    return @matches;
}

sub goto_window {
    my ($win) = @_;
    $win->get_workspace->activate(time);
    $win->activate(time);
}

# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Gwbn - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Gwbn;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for Gwbn, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.

=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

Sean Dague, E<lt>sdague@E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2009 by Sean Dague

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.


=cut
