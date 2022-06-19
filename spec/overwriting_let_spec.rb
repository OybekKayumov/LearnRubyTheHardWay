class ProgrammLanguage
  attr_reader :name

  def initialize(name = "Ruby")
    @name = name
  end
end

RSpec.describe ProgrammLanguage do
  let(:language) { ProgrammLanguage.new('Python') }

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')  
  end

  context "with mo argument" do
    let(:language) { ProgrammLanguage.new}

    it 'should default to Ruby as the name' do
      expect(language.name).to eq('Ruby')  
    end    
  end
  
end
