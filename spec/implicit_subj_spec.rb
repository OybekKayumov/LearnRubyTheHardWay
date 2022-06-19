RSpec.describe Hash do
  # let(:my_hash) { {} }
  # empty hash {} same as Hash.new

  # let(:subject) { Hash.new }

  it 'should start off empty' do
    # puts subject
    # puts subject.class

    expect(subject.length).to eq(0)  
    subject[:some_key] = "Some Value" 
    expect(subject.length).to eq(1)  
  end

  # totally new hash object
  it 'is isolated between examples' do    
    expect(subject.length).to eq(0)      
  end
end

# puts subject
# puts subject.class
# {}
# Hash