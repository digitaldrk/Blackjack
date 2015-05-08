$LOAD_PATH.unshift File.dirname(__FILE__)
require 'deck'

#Black Jack game

#Player Vs Computer

#deck = 52 cards |Clubs, Hearts, Diamonds, Spades 2 -> 10 J, K Q

# Can't go over

deck = Deck.new

deck.shuffle


dealer = deck.draw

player = deck.draw

puts dealer.inspect
puts player.inspect