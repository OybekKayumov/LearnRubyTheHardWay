# 10. The describe Method
# 11. The it Method
# 12. The expect and eq Methods

#todo 14. Making the Specs Pass
# class Card
#   attr_reader :type

#   def initialize(type)
#     @type = type
#   end
# end

# RSpec.describe 'Card' do
#   it 'has a type' do
#     card = Card.new('Ace of Spades')
#     expect(card.type).to eq('Ace of Spades')
#   end
# end

# todo same as "it"  
# specify 'has a type' do 
# end

# eq = equal

# example
# expect(1 + 1).to eq(2) 
# expect(1 + 1).to(eq(2)) 

#todo refactoring

# class Card
#   # attr_reader :type
#   attr_reader :rank, :suit

#   def initialize(rank, suit)
#     # @type = type
#     @rank = rank
#     @suit = suit
#   end
# end

# RSpec.describe Card do
#   before do
#     puts "Hey, I will be output before EACH test example"
#     @card = Card.new('Ace', 'Spades')
#   end
  
#   it 'has a rank' do
#     # card = Card.new('Ace', 'Spades')
#     expect(@card.rank).to eq('Ace')
#   end

#   it 'has a suit' do
#     # card = Card.new('Ace', 'Spades')
#     expect(@card.suit).to eq('Spades')
#   end

# end


#? same and identical blocks "before" and "before(:exapmle)"
#? and this block of code is going to run before each of exapmle in test suite

# before do
# before(:exapmle) do
# end

#todo helpers methods

class Card
  #* only access values:
  # attr_reader :rank, :suit

  #* access and give new values:
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # before do
  #   puts "Hey, I will be output before EACH test example"
  #   @card = Card.new('Ace', 'Spades')
  # end
  # def card
  #   Card.new('Ace', 'Spades')    
  # end
  
  # memoization, benefits of using "let"
      # 1 - separation between different exapmles 
      # 2 - memoization with single example
      # 3 - lazy loading - means that we're not qoing to create a "card" variable until it needs to be used
  # "let"  runs first time when expect(card.rank...) calls - line 103 and 109

  let(:card) { Card.new('Ace', 'Spades') }
  let(:x) { 1 + 1 }
  let(:y) { x + 10 }
  
  it 'has a rank and that rank can change' do
    x
    y
    expect(card.rank).to eq('Ace')
    card.rank = "Queen"
    expect(card.rank).to eq('Queen') 
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

end
