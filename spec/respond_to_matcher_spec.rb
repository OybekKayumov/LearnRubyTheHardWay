class HotChocolate
  def drink
    'Delecious'    
  end

  def discard
    'PLOP!'    
  end

  def purchase(number)
    "Awesome, I jst purchased #{number} more hot chocolate beverages!"
  end
end
  
# class Coffee
#   def drink; end

#   def discard; end
  
#   def purchase; end
# end

RSpec.describe HotChocolate do
  it 'confirm that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end
end
