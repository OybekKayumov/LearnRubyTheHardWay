# 10. The describe Method
# 11. The it Method
# 12. The expect and eq Methods

#todo 14. Making the Specs Pass
class Card
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

RSpec.describe 'Card' do
  it 'has a type' do
    card = Card.new('Ace of Spades')
    expect(card.type).to eq('Ace of Spades')
  end
end

# todo same ia "it"  
# specify 'has a type' do 
# end

# eq = equal

# example
# expect(1 + 1).to eq(2) 
# expect(1 + 1).to(eq(2)) 


