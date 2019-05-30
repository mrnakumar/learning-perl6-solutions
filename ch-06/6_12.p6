#!/usr/bin/perl6

my $letters = 'a' .. 'z';
my $positions = 1 .. 26;

my $letters-with-positions := @$letters Z @$positions;
for $letters-with-positions -> $e {
    put $e;
}