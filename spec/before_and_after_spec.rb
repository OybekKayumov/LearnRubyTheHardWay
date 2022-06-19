RSpec.describe "before and after hooks" do
  # runs one
  before(:context) do
    puts "Before context"
  end

  # runs one
  after(:context) do
    puts "After context"
  end

  # runs many
  before(:example) do
    puts "Before example"
  end

  # runs many
  after(:example) do
    puts "After example"
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20) 
  end  

  it 'is just another random example' do
    expect(5 - 4).to eq(1) 
  end  
end
