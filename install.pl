#!/usr/bin/perl -w

use strict;
use Cwd 'cwd';

my $home=$ENV{HOME};
my $cwd = cwd();

sub runCommand($) {
    my ($command) = @_;
    open CMD, "$command |" || die "Unable to run $command: $!";
    my @output = <CMD>;
    close CMD;
    return @output;
}

# read dot files directory
opendir(DH, "$cwd");
my @files = readdir(DH);
closedir(DH);

foreach (@files) {
    # skip . and .. and others
    next if($_ =~ /^\.$/);
    next if($_ =~ /^\.\.$/);
    next if($_ =~ /^\.git$/);
    next if($_ =~ /^\.gitignore$/);
    next if($_ =~ /^install.pl$/);
    next if($_ =~ /^updateVimPlugins.pl$/);
    next if($_ =~ /^README.md$/);
    next if($_ =~ /^Notes.md$/);
    next if($_ =~ /^vimstuff$/);

    print join('', runCommand("ln -sfv $cwd/$_ $home"));
}
