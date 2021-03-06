#todo Intro to Hashes
empty_hash = {}

p empty_hash  # {}
p empty_hash.class # Hash

# 
puts
empty_array = []
p empty_array   # []
p empty_array.class # Array

p empty_hash == empty_array # false

#todo Create Hash and Extract Values from Hashes by their Keys
# key => value; keys are uniq, values can be duplicated
nfl_roster = 
{
  "Tom Brady" => "New England Patriots",
  "Tony Romo" => "Dallas Cowboys",
  "Rob Gronkowski" => "New England Patriots"
}

nba_roster = 
{
  "Cleveland Cavaliers" => [ "LeBron James", "Kevin Love", "Kyrie Irving" ],
  "GS Warriors" => [ "Stephen Curry", "Klay Thomson", "Kevin Durant" ]  
}

# extrac
p nfl_roster
# {"Tom Brady"=>"New England Patriots", "Tony Romo"=>"Dallas Cowboys", "Rob Gronkowski"=>"New England Patriots"}

puts
p nfl_roster["Tony Romo"]
# "Dallas Cowboys"
p nfl_roster["Rob Gronkowski"]
# "New England Patriots"

puts
p nba_roster["Cleveland Cavaliers"]
# [ "LeBron James", "Kevin Love", "Kyrie Irving" ]

p nba_roster["Cleveland Cavaliers"][2]
# "Kyrie Irving"

p nba_roster["GS Warriors"]
# ["Stephen Curry", "Klay Thomson", "Kevin Durant"]

#!
p nba_roster["GS warriors"] #nil  Warriors

p nfl_roster["Tom brady"] #nil  Brady
