$LOAD_PATH.unshift File.dirname(__FILE__)
require 'deck'

=begin
  
rescue Exception => e
  
end
puts "Do you want to play?"
reply1 = gets.chomp.downcase

if reply1 == "yes"
  puts "Cool let's get started"
elsif reply1 == "no"
  puts "Fine, whatever."
else
  puts "Please make sure you enter \"yes\" or \"no\"."
end


if player[1] == 21
  puts "Boom! You win!"
elsif dealer[1] == 21
  puts "Whoa you lost. The dealer hit 21"
else
  puts  "You are holding a #{player} and the dealer has a #{dealer}."
end

if dealer[1] <= 16
  deck.draw >> dealer
end


puts "Do you want to hit or stay?"
reply2 = gets.chomp

case
when reply2 = "hit"
  deck.draw >> player
when reply2 == "stay"
  puts "Ok, you are staying."
end
=end


deck = Deck.new

deck.shuffle

#deck.rej


dealer = []
player = []


dealer << deck.draw
dealer << deck.draw
player << deck.draw

#dealer.delete_at(0)

puts dealer.inspect
puts player