RSpec.describe "include matcher" do
  describe "hot chocolate" do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end

    it {is_expected.to include('hot')}
  end  

  describe [10, 20, 30] do
    it "checks for inclusion in the array, regardless of order" do
      expect(subject).to include(10) 
      expect(subject).to include(20, 10) 
    end

    it { is_expected.to include(30)}
  end

  describe ({ a: 2, b: 4 }) do
    it "checks for key existence in the hash" do
      expect(subject).to include(:a)
      expect(subject).to include(:b, :a)
    end
    
    it "can check for key-value pair in the hash" do
      expect(subject).to include(a: 2)
      expect(subject).to include(b: 4)
    end

    it { is_expected.to include(:a)}
    it { is_expected.to include(b: 4)}
  end  
end
