RSpec.describe 25 do
  it 'can test for multiple matchers' do
    # expect(subject).to be_odd
    # expect(subject).to > 20 

    expect(subject).to be_odd.and be > 20 
  end

  it { is_expected.to be_odd and be > 20 }
end
