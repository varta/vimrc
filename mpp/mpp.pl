#!/usr/bin/perl

use strict;

my %macros = {};

my $curmacro = "";
my $appending = 0;

while(<STDIN>) {
    my $line = $_;

    # Strip comments
    $line =~ s/#.*$//;
    chomp $line;

    # Strip whitespace
    $line =~ s/^[[:space:]]*//;
    $line =~ s/[[:space:]]*$//;

    my $macro; my $macroname; my $spaceindex;
    $spaceindex = index($line, ' ');

    # Check for macros
    if($spaceindex == -1) {
        $macro = $line;
    } else {
        $macro = substr($line, 0, $spaceindex);
        $macroname = substr($line, $spaceindex);
    }

    if($macro eq ".macro") {
        $appending = 1;
        $curmacro = $line;
        $curmacro =~ s/\.macro //;
    } elsif($macro eq ".endmacro") {
        $appending = 0;
    } elsif($appending) {
        $macros{$curmacro} .= "$line\n";
    } elsif(exists $macros{$macro}) {
        print $macros{$macro};
    } elsif(length $line != 0) {
        print "$line\n";
    }
}
