#!/usr/bin/perl6

my @nums = <1 2 3 4 5 6 7 8 9 10>;
my $map = Map.new: @nums.map:  { $^a => $^a ** 2} ;

loop {
my $i := try {
    CATCH {
        default {
            put "Exception: is $_.^name";
            exit;
        }
    }
    my $pi := prompt('Enter a number?');
    last unless $pi;
    $pi.Int;
}

if $map{$i}:exists {
    put "{$i}'s square is [$map{$i}]";
}else {
    put "$i does not exists in map.";
}
}