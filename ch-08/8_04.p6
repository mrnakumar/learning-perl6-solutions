#!/usr/bin/perl6

list('/etc'.IO,1);

sub list($f, Int $indent){
    if $f.e {
        my $spaces:= "  " x $indent;
        put "{$spaces}->{$f}";
        if $f.d and $f.r {
            for dir($f) -> $ff {
                list($ff, $indent+1);
            }
        }
    }
}