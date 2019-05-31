#!/usr/bin/perl6
my $suits = ("Hearts", "Clubs", "Spades" ,"Diamonds");
my $cardNumbers := [ 2 .. 9];
my $allCards = $cardNumbers.push: "T", "J", "Q", "K", "A";
my $allCardsList = $allCards.List;

my $cardStr = $allCardsList.join: '';

my $cp := @$suits X @$allCardsList;

my $picks := $cp.pick: 25;

for $picks.rotor: 5 -> $hand {
    my $sorted := $hand.sort( { $cardStr.index: $^a.[1]} );
    say $sorted;
}