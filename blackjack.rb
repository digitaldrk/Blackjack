$LOAD_PATH.unshift File.dirname(__FILE__)
require 'deck'

deck = Deck.new

deck.shuffle

dealer = []
player = []

player << deck.draw
dealer << deck.draw
player << deck.draw
dealer << deck.draw


puts "Do you want to play?"
reply1 = gets.chomp.downcase

if reply1 == "yes"
  puts "Cool let's get started"
elsif reply1 == "no"
  puts "Fine, whatever."
  abort
else
  puts "Please make sure you enter \"yes\" or \"no\"."
end

puts "The dealer is holding the #{dealer[0].value} of #{dealer[0].suit}"
puts "You are holding the #{player[0].value} of #{player[0].suit} and the #{player[1].value} of #{player[1].suit}."

if player[0].value + player[1].value == 21
  puts "Boom! You win!"
  abort
elsif dealer[0].value + dealer[1].value == 21
  puts "Whoa you lost. The dealer hit 21"
  abort
else
  puts "No one hit 21."
end

if dealer[0].value + dealer[1].value <= 16
  dealer << deck.draw
end

puts "Do you want to hit?"
reply2 = gets.chomp.downcase

if reply2 == "yes"
  player << deck.draw
else reply2 == "no"
  puts "You have #{player} and the dealer has #{dealer}."
  abort
end

if player[0].value + player[1].value + player[2].value > 21
  puts "You went over 21! You lost, sorry. Your cards were #{player[0].value} of #{player[0].suit} and the #{player[1].value} of #{player[1].suit} and #{player[2].value} of #{player[2].suit}."
else
  puts "#{player[0].value} + #{player[1].value} + #{player[2].value}"
end





