# Create an example group using ​RSpec.describe​ with an argument of ​Array​.
# This represent Rubys native Array class.
# Add an example with a docstring of your choice.
# Write an assertion that tests that the initial length of ​subject​ is 0. 
# In the same example, invoke the ​push​ method to add an element to the ​subject​ array.
# Write another assertion to check that the length of the array is now 1.

RSpec.describe Array do
  
  it 'should be able to add items' do
    # puts subject
    # puts subject.class

    expect(subject.length).to eq(0)  
    subject.push('item1') 
    expect(subject.length).to eq(1)  
  end  
end

# puts subject
# puts subject.class
# {}
# Hash