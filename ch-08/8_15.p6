#!/usr/bin/perl6

sub MAIN($path){
my $buffer := try {
    CATCH {
        default { 
            put "Error in opening file {.^name}";
            exit;
        }
    }
    open $path, :bin;
}


while 1 {
    my $r := $buffer.read(16);
    put $r.List.fmt: "%02X";
     if $buffer.eof {
        last;        
    }
}
$buffer.close;
}