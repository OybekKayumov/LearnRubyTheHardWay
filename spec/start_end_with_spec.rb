RSpec.describe "start_with and end_with matchers" do
  describe "caterpillar" do
    it "should check for substring at the beginning or end" do
      expect(subject).to start_with('cat')      
      expect(subject).to end_with('lar')

      expect(subject.capitalize).to start_with('Cat')      
    end 
    
    it { is_expected.to start_with('cat') } 
    it { is_expected.to end_with('lar') } 
  end
  
  describe [:a, :b, :c, :d] do
    it "should check for elements at beginning or end of the array" do
      expect(subject).to start_with(:a)      
      expect(subject).to end_with(:d)
    end 

    it { is_expected.to start_with(:a) } 
    it { is_expected.to end_with(:d) } 
  end
end
