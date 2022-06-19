#todo exercise N 1
# RSpec.describe 'math calculations' do
#   it 'does basic math' do  
#     expect(1 + 1).to eq(2)
#     expect(2 - 1).to eq(1)
#     expect(5 * 5).to eq(25)
#     expect(10 / 5).to eq(2)
#   end
# end

#todo exercise N 2
RSpec.describe "regular hooks" do
  before(:context) do
    puts "A"
  end  

  before(:example) do
    puts "C"
  end  

  after(:example) do
    puts "D"
  end  

  after(:context) do
    puts "B"
  end  

  it 'should compare strings' do
    expect('hello').to eq('hello')  
  end

  it 'should compare numbers' do
    expect(3.14).to eq(3.14)  
  end
end

