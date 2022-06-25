# The .delete Method on a Hash
superheroes = {spiderman: 'Peter Parker',
               superman: 'Clark Kent',
               batman: 'Brice Wayne' }

p superheroes
p superheroes.delete(:spiderman)
p superheroes

# {:spiderman=>"Peter Parker", :superman=>"Clark Kent", :batman=>"Brice Wayne"}
# "Peter Parker"
# {:superman=>"Clark Kent", :batman=>"Brice Wayne"}

puts
p superheroes.delete(:batman)
p superheroes
# "Brice Wayne"
# {:superman=>"Clark Kent"}