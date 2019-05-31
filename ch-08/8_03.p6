#!/usr/bin/perl6

my $files := dir('/etc').sort: *.basename;
for $files -> $file {
    state $line-number = 0;
    $line-number++;
    put "$line-number ':' $file";
}