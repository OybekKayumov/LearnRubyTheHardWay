RSpec.describe 'satusfy matcher' do
  subject { 'racecar' } 
  # subject { 'racecars' } 

  it 'is  palindrom' do
    expect(subject).to satisfy { |value| value == value.reverse} 
  end

  it 'is  palindrom' do
    expect(subject).to satisfy ('be a palindrom') do |value|
      value == value.reverse      
    end 
  end
end