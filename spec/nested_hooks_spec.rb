RSpec.describe "nested hooks" do
  before(:context) do
    puts "OUTER Before context"
  end
  
  # runs many
  before(:example) do
    puts "OUTER Before example"
  end 

  it 'does basic maths' do
    expect(10 + 20).to eq(30) 
  end  

  context "with condition A" do
    
    before(:context) do
      puts "INNER Before context"
    end
    
    # runs many
    before(:example) do
      puts "INNER Before example"
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

#---------------
# OUTER Before context
# OUTER Before example
# .INNER Before context
# OUTER Before example
# INNER Before example
# .OUTER Before example
# INNER Before example

# Before context means run once within the current context or current block
# Before example means run once before every example, but only within that current block
