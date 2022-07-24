class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)    
    true
  end  

  def act
    "I love you, baby"
  end

  def fall_off_ladder
    "Call my agent! No way!"    
  end

  def light_on_fire
    false
  end
end


class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end  
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)

# movie.start_shooting

# puts actor.act
# puts actor.fall_off_ladder
# puts actor.light_on_fire

RSpec.describe Movie do
  let(:stuntman) { double("Mr. Danger", ready?: true, act: "Any string at all", fall_off_ladder: "Sure! Lets do it", light_on_fire: true)} 

  subject { described_class.new(stuntman) } 

  describe "#start_shooting method" do
    it "expect an actor to do 3 actions" do
      # expect(stuntman).to receive(:light_on_fire).once 
      # expect(stuntman).to receive(:light_on_fire).exactly(1).times 
      expect(stuntman).to receive(:light_on_fire).at_most(1).times 
      
      # expect(stuntman).to receive(:act).twice 
      # expect(stuntman).to receive(:act).exactly(2).times
      expect(stuntman).to receive(:act).at_least(2).times
      
      subject.start_shooting 
    end  
  end
  
end


# expect(stuntman).to receive(:ready?) 
# expect(stuntman).to receive(:act) 
# expect(stuntman).to receive(:fall_off_ladder) 
# expect(stuntman).to receive(:light_on_fire) 