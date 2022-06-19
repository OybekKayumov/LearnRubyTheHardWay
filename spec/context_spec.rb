RSpec.describe "#even? method" do
  # it 'should return true if number is even'

  # it 'should return false if number is odd'

  #even? method with even number
  describe "with even number" do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end     
  end
  
  #even? method with odd number
  describe "with odd number" do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
  
end
