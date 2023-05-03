#!/usr/bin/perl -w

use strict;
use Cwd 'cwd';

my $cwd = cwd();
my $dotVimDir;

sub runCommand($) {
    my ($command)=@_;
    open CMD,"$command |";
    my @output=<CMD>;
    close CMD;
    return @output;
}

MAIN: {
    my $platform=$^O;
    my $home=$ENV{HOME};
    if($platform eq 'linux') {
        $dotVimDir="$home/.vim";
    } elsif($platform eq 'msys') {
        $dotVimDir="$home/vimfiles";
    } else {
        print "unknown platform\n";
        exit 1;
    }

    runCommand("mkdir -p $dotVimDir");
    runCommand("mkdir -p $dotVimDir/bundle");

    runCommand("ln -sfvn $cwd/vimstuff/autoload $dotVimDir/autoload");
    runCommand("ln -sfvn $cwd/vimstuff/ftplugin $dotVimDir/ftplugin");
    runCommand("ln -sfvn $cwd/vimstuff/dictionaries $dotVimDir/dictionaries");
}
