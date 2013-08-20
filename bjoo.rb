

#NOUNS

#cards


class Card

attr_accessor :suit, :face_value

  def initialize(suit, face_value)
    @suit = suit
    @face_value = face_value
  end


  def pretty_ouput
    puts "The #{face_value} of #{find_suit}"
  end

  def to_s
    pretty_ouput
  end

  def find_suit
    case suit
      when 'H' then 'Hearts'
      when 'S' then 'Spades'
      when 'D' then 'Diamonds'
      when 'C' then 'Clubs'
    end
  end

end


class Deck

  attr_accessor :cards

def initialize
@cards = []
['H', 'D', 'S', 'C'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end
    scramble!
end

def scramble!
  cards.shuffle!
end

def deal_one
  cards.pop
end

def size
  cards.size
end

end



module Hand
  def show_hand
    puts "----- #{name}'s Hand ----"
    cards.each do |card|
      puts "=> #{card}"
    end
    puts "=> Total: #{total}"
  end

  def total
    face_values = cards.map{|card| cards.face_value}

    total = 0

    if val == "A"
        total += 11
      else
        total += (val.to_i == 0 ? 10 : val.to_i)
      end
    end

  def add_card(new_card)
    cards.push(new_card)
  end

  def is_busted?
    total > 21
  end


end





class Player
  include Hand

attr_accessor :name, :cards

def initialize(n)
  @name = n
  @cards = []
end

end

class Dealer
  include Hand

attr_accessor :name, :cards

def initialize
  @name = "Dealer"
  @cards = []
end


end


deck = Deck.new

player = Player.new("Mark")
player.add_card(deck.deal_one)
player.show_hand


