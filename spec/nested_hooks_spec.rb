RSpec.describe "nested hooks" do
  before(:context) do
    puts "Outer Before context"
  end
  
  # runs many
  before(:example) do
    puts "Outer Before example"
  end 

  it 'does basic maths' do
    expect(10 + 20).to eq(30) 
  end  

  context "with condition A" do
    
    before(:context) do
      puts "Inner Before context"
    end
    
    # runs many
    before(:example) do
      puts "Inner Before example"
    end 

    it 'does somemore basic maths' do
      expect(10 * 20).to eq(200) 
    end  

    it 'does subtraction as well' do
      expect(10 - 20).to eq(-10) 
    end  
  end
  
end


# Before context
# Before example