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
    $line = trim($line);

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
        # Start of a macro definition
        $appending = 1;
        $curmacro = $line;
        $curmacro =~ s/\.macro //;
    } elsif($macro eq ".endmacro") {
        # End of a macro definition
        $appending = 0;
    } elsif($appending) {
        # inside a macro definition
        $macros{$curmacro} .= "$line\n";
    } elsif(exists $macros{$macro}) {
        # Macro invocation
        my $macroargs = $macroname; # Rename variable to avoid confusion
        my $finalmacro = $macros{$macro};
        my $anum = 0;

        # Subsitute all arguments
        foreach my $arg (explodeargs(trim($macroargs))) {
            $finalmacro =~ s/\@$anum/$arg/g;
            ++$anum;
        }

        print $finalmacro;
    } elsif(length $line != 0) {
        # Just a regular line
        print "$line\n";
    }
}

sub trim {
    my $line = shift;
    $line =~ s/^[[:space:]]*//;
    $line =~ s/[[:space:]]*$//;
    return $line;
}

sub explodeargs {
    my $line = shift;
    return split(/,[[:space:]]*/, $line);
}
