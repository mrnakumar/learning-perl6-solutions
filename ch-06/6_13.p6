#!/usr/bin/perl6

my $suits = ("Hearts", "Clubs", "Spades" ,"Diamonds");
my $cardNumbers := [ 2 .. 10];
my $withAce := $cardNumbers.unshift: "ACE";
my $allCards = $withAce.push: "JACK", "QUEEN", "KING";
my $allCardsList = $allCards.List;

my $cp := @$suits X @$allCardsList;

for $cp.rotor: 13 {
    say $_;
}