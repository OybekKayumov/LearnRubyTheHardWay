RSpec.describe "nested hooks" do
  before(:context) do
    puts "Before context"
  end
  
  # runs many
  before(:example) do
    puts "Before example"
  end 

  it 'does basic maths' do
    expect(10 + 20).to eq(30) 
  end  

  context "with condition A" do
    
  end
  
end


# Before context
# Before example