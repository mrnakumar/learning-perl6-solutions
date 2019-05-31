#!/usr/bin/perl6

sub MAIN($file) {
    my $fh := try {
        CATCH {
            default {
                put "Exception: $_.^name";
                exit;
            }
        }
        open $file, :r;
    }
    my %freq;

    for $fh.lines -> $line {
        for $line.split: ' ', :skip-empty -> $word {
           %freq{$word.lc}++;
        }
    }

    my $sortedKeys := %freq.keys.sort( { %freq{$^a} or $^a}) .reverse;
    for $sortedKeys -> $key {
        put "$key : {$%freq{$key}}";
    }
}