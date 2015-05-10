require 'card'

class Deck < Card


  def initialize
    @cards = []
    
    suits = [:hearts, :diamonds, :spades, :clubs]

    suits.each do |suit|
      (2..10).each do |value|
      name = value.to_s
        @cards << Card.new(suit, value, name)
      end
      @cards << Card.new(suit, 10, "Jack")
      @cards << Card.new(suit, 10, "Queen")
      @cards << Card.new(suit, 10, "King")
      @cards << Card.new(suit, 11, "Ace")
    end
  end

 # def rej
  #  @cards.reject { |i| i == /#/}
  #end

  def shuffle
    @cards.shuffle!
  end

  def draw
    @cards.shift
  end

end