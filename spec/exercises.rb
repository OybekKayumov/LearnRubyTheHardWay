#todo exercise N 1
RSpec.describe 'math calculations' do
  it 'does basic math' do  
    expect(1 + 1).to eq(2)
    expect(2 - 1).to eq(1)
    expect(5 * 5).to eq(25)
    expect(10 / 5).to eq(2)
  end
end