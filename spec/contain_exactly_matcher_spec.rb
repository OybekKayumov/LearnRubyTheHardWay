RSpec.describe "contain_exactly matcher" do
  subject { [1, 2, 3] } 
  
  describe "long check for the presence of all elements" do
    it 'should checks for the presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(2, 1, 3)
      expect(subject).to contain_exactly(3, 2, 1)

      # expect(subject).to contain_exactly(3, 2)    #! err
      # expect(subject).to contain_exactly(3, 2, 1, 4)  #! err      
    end       
  end

  it { is_expected.to contain_exactly(1, 2, 3)}
  it { is_expected.to contain_exactly(3, 2, 1)}
  it { is_expected.to contain_exactly(2, 1, 3)}
end