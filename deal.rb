class Cards
  attr_accessor :ranks, :suits

  def initialize(ranks, suits)
    @ranks = ranks
    @suits = suits
  end

def deal_cards
  puts "The #{@ranks} of #{@suits}"
end

class Deck
  def initialize
@ranks = %i[A 2 3 4 5 6 7 8 9 19 J Q K]
@suits = %i[Spades Hearts Diamonds Clubs]
@cards = []

@ranks.each do |ranks|
  @suits.each do |suits|
    @cards << Cards.new(ranks, suits)
  end
end

@cards.shuffle!
end

def deal(number)
  number.times {@cards.shift.deal_cards}
end
end

deck = Deck.new
deck.deal(7)
puts "Player One"
deck.deal(7)
puts "Player Two"
deck.deal(7)
puts "Player Three"
deck.deal(7)
puts "Player Four"
end
