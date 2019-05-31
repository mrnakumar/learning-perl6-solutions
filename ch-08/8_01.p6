#!/usr/bin/perl6

for @*ARGS -> $file {
    unless $file.IO.e {
        put "'$file' does not exist";
        next;
    }
    put "'$file'";
    put "\treadable? ", $file.IO.r;
    put "\twritable? ", $file.IO.w;
    put "\texecutable ", $file.IO.x;
}