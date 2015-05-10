$LOAD_PATH.unshift File.dirname(__FILE__)
require 'deck'



deck = Deck.new

deck.shuffle

#deck.rej


dealer = []
player = []


dealer << deck.draw
player << deck.draw

#dealer.delete_at(0)

puts dealer.inspect
puts player