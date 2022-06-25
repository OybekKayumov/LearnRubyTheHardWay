# Create Hash with Default Value

fruit_prices = {banana: 1.05}

p fruit_prices[:orange]   #nil
p fruit_prices[:grape]   #nil

puts
# fruit_prices_1 = Hash.new(0)
fruit_prices_1 = Hash.new("Not found")
fruit_prices_1[:banana] = 1.05
fruit_prices_1[:orange] = 0.69
fruit_prices_1[:grape] = 10.99

p fruit_prices_1
# {:banana=>1.05, :orange=>0.69, :grape=>10.99}
p fruit_prices_1[:steak]  # "Not found"
p fruit_prices_1[:mashrooms]  # "Not found"

fruit_prices_1.default = "Not exist..."
p fruit_prices_1[:mashrooms]  # "Not exist..."
p fruit_prices_1[:steak]  # "Not exist..."

puts
# todo Convert Hash to Array and Vice Versa
spice_girls = {scary: 'Melany Btown', sporty: 'Melanie Chisholm',
               baby: 'Emma Bnuton', ginger: 'Gery Halliwell', 
              posh: 'Victoria Beckham'}

p spice_girls.to_a
# [[:scary, "Melany Btown"], [:sporty, "Melanie Chisholm"], [:baby, "Emma Bnuton"], [:ginger, "Gery Halliwell"], [:posh, "Victoria Beckham"]]

p spice_girls.to_a.flatten
# [:scary, "Melany Btown", :sporty, "Melanie Chisholm", :baby, "Emma Bnuton", :ginger, "Gery Halliwell", :posh, "Victoria Beckham"]

puts
power_rangers = [
  [:red, 'Jason'], [:black, 'Zack'], 
  [:blue, 'Billy'], [:yellow, 'Trini'], 
  [:pink, 'Kimberly'] 
]

p puts power_rangers.to_h   # convert to hash
# {:red=>"Jason", :black=>"Zack", :blue=>"Billy", :yellow=>"Trini", :pink=>"Kimberly"}

p puts power_rangers.to_h.class   # Hash


puts
# todo The .sort and .sort_by Methods on a Hash
pokemon = {squirtle: 'Water', bulbasaur: 'Grass', charizard: 'Fire'}

p pokemon.sort
# [[:bulbasaur, "Grass"], [:charizard, "Fire"], [:squirtle, "Water"]]

p pokemon.sort.class  # Array
# [:bulbasaur, "Grass"] key: value pair

puts 
p pokemon.sort.reverse
# [[:squirtle, "Water"], [:charizard, "Fire"], [:bulbasaur, "Grass"]]

puts
# todo sort by values, needs a block
p pokemon.sort_by {|pokemon, type| pokemon }
# [[:bulbasaur, "Grass"], [:charizard, "Fire"], [:squirtle, "Water"]]

p pokemon.sort_by {|pokemon, type| type }
# [[:charizard, "Fire"], [:bulbasaur, "Grass"], [:squirtle, "Water"]]
# Fire, Grass, Water

p pokemon.sort_by {|pokemon, type| type }.reverse
# [[:squirtle, "Water"], [:bulbasaur, "Grass"], [:charizard, "Fire"]]

puts
# todo The .key? and .value? Methods on a Hash
