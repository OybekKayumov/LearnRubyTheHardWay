RSpec.describe "not_to method" do
  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq(15)
    expect([1, 2, 3]).not_to equal([1, 2, 3])
    expect(10).not_to be_odd
    expect([1, 2, 3]).not_to be_empty

    expect(nil).not_to be_truthy

    expect('California').not_to start_with('los')
    expect('California').not_to end_with('city')
    
    expect(5).not_to respond_to(:length)
    
    expect([:a, :b, :c]).not_to include(:d)

    expect{15 / 4}.not_to raise_error
    expect{15 / 4}.not_to raise_error(NameError)
  end
end
