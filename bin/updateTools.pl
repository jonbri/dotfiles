#!/usr/bin/perl -w

use strict;

my @repos=qw(
    https://github.com/jonbri/killer|killer
    https://github.com/jonbri/persona|persona
);

sub doHelp(;$) {
    my ($errMsg) = @_;
    if ($errMsg) {
        print "error: $errMsg\n";
    }
    print STDERR <<'HELP';
----------------------------------------------------------------
updateTools
----------------------------------------------------------------

Basic Usage:
  >> ./updateTools

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

    my $toolsDir;
    my $homeBinDir;

    if($platform eq 'linux') {
        $toolsDir="$home/tools";
        $homeBinDir="$home/bin";
    } elsif($platform eq 'msys') {
        $toolsDir="$home/tools";
        $homeBinDir="$home/bin";
    } else {
        print "unknown platform\n";
        exit 1;
    }

    runCommand("mkdir -p $toolsDir");
    runCommand("mkdir -p $homeBinDir");
    runCommand("curl --silent https://raw.githubusercontent.com/jonbri/copybuddy/master/copybuddy > $homeBinDir/copybuddy");
    runCommand("cp bin/bin/* $homeBinDir");
    runCommand("chmod +x $homeBinDir/copybuddy");

    my ($repo,$folderName);
    foreach(@repos) {
        ($repo,$folderName)=split("\Q|",$_,2);

        print "updating ${folderName}...\n";

        my $fullPath="$toolsDir/$folderName";
        my $main = `cd $fullPath && main`;
        if (-d "$fullPath") {
            runCommand("git -C $fullPath stash -u");
            runCommand("git -C $fullPath fetch");
            runCommand("git -C $fullPath checkout $main");
            runCommand("git -C $fullPath reset --hard origin/$main");
        } else {
            runCommand("git clone $repo $fullPath --depth 1");
        }

        if (-e "$fullPath/.cb") {
            runCommand("$homeBinDir/copybuddy $fullPath/.cb");
        }
    }

    exit;
}
