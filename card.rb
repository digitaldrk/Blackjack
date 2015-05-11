class Card

attr_accessor :suit
attr_accessor :value
attr_accessor :name

  def initialize(suit, value, name)
    @suit = suit
    @value = value
    @name = name
  end

end