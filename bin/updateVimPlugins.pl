#!/usr/bin/perl -w

use strict;
use Cwd 'cwd';

my $cwd = cwd();
my $dotVimDir;
my @repos=qw(
    https://github.com/junegunn/vader.vim.git|junegunn-vader
    https://github.com/junegunn/goyo.vim.git|junegunn-goyo
    https://github.com/tpope/vim-fugitive|tpope-fugitive
    https://github.com/tpope/vim-flagship|tpope-flagship
    https://github.com/tpope/vim-unimpaired|tpope-unimpaired
    https://github.com/tpope/vim-scriptease|tpope-scriptease
    https://github.com/tpope/vim-repeat|tpope-repeat
    https://github.com/tpope/vim-surround|tpope-surround
    https://github.com/tpope/vim-commentary|tpope-commentary
    https://github.com/tpope/vim-vinegar|tpope-vinegar
    https://github.com/tpope/vim-speeddating.git|tpope-speeddating
    https://github.com/tpope/vim-eunuch|tpope-eunuch
    https://github.com/tpope/vim-dispatch|tpope-dispatch
    https://github.com/tpope/vim-abolish|tpope-abolish
    https://github.com/duff/vim-bufonly.git|bufonly
    https://github.com/jonbri/vim-configure.git|jonbri-configure
    https://github.com/jonbri/vim-flash.git|jonbri-flash
    https://github.com/jonbri/vim-lorum.git|jonbri-lorum
    https://github.com/jonbri/vim-sensible|jonbri-sensible
    https://github.com/jonbri/vim-amperage.git|jonbri-amperage
    https://github.com/jonbri/vim-copybuddy.git|jonbri-copybuddy
    https://github.com/jonbri/vim-win.git|jonbri-win
    https://github.com/jonbri/vim-spaced.git|jonbri-spaced
    https://github.com/jonbri/vim-yankee.git|jonbri-yankee
    https://github.com/jonbri/vim-zargs.git|jonbri-zargs
    https://github.com/jonbri/vim-dictionary.git|jonbri-dictionary
    https://github.com/AndrewRadev/discotheque.vim.git|vim-discotheque
);

sub doHelp(;$) {
    my ($errMsg) = @_;
    if ($errMsg) {
        print "error: $errMsg\n";
    }
    print STDOUT <<'HELP';
----------------------------------------------------------------
updatePlugins
----------------------------------------------------------------

Basic Usage:
  >> ./updatePlugins

HELP
exit 1;
};

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

    my ($repo,$folderName);
    foreach(@repos) {
        ($repo,$folderName)=split("\Q|",$_,2);

        my $fullPath="$dotVimDir/bundle/$folderName";
        my $main = `cd $fullPath && main`;
        if (-d "$fullPath") {
            runCommand("git -C $fullPath stash -u");
            runCommand("git -C $fullPath pull origin $main");
        } else {
            runCommand("git clone $repo $fullPath --depth 1");
        }
    }

    exit;
}
