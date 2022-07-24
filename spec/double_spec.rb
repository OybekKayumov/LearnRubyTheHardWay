RSpec.describe "a random double" do
  it 'only allows defined method to be invoked' do
    stuntman = double("Mr.Danger", fall_off_ladder: 'Ouch', light_on_fire: true)    
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)

    stuntman1 = double("Mr.Danger1")
    allow(stuntman1).to receive(:fall_off_ladder1).and_return('Ouch1')
    # expect(stuntman1.fall_off_ladder1).to be_nil  
    expect(stuntman1.fall_off_ladder1).to eq('Ouch1')
    
    stuntman2 = double("Mr.Danger2")
    allow(stuntman2).to receive_messages(fall_off_ladder2: 'Ouch2', light_on_fire2: true)
    expect(stuntman2.fall_off_ladder2).to eq('Ouch2')
    expect(stuntman2.light_on_fire2).to eq(true)
  end
end


RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
 
    # For each question, write the code that should go here
    db = double("Database Connection", disconnect: 'Goodbye', connect: true)    
    expect(db.disconnect).to eq('Goodbye')
    expect(db.connect).to eq(true)
    
    fs = double("File System") 
    allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)   
    expect(fs.read).to eq('Romeo and Juliet')
    expect(fs.write).to eq(false)
  end
end

# db = double('Database Connection')
# allow(db).to receive_messages({ connect: true, disconnect: 'Goodbye'})
# expect(db.connect).to be_truthy
# expect(db.disconnect).to eq('Goodbye')

# fs = double('File System')
# allow(fs).to receive_messages({ read: 'Romeo and Juliet', write: false })
# expect(fs.read).to eq('Romeo and Juliet')
# expect(fs.write).to be_falsy