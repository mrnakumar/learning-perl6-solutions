#!/usr/bin/perl6

sub MAIN($path) {
    try {
        CATCH {
            when X::IO::Mkdir { put "Exception is {.message}"}
        }
        $path.IO.mkdir: 0o700;
    }
}