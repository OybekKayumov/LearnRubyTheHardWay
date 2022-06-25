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

puts
# todo The .select and .reject Methods on a Hash
recipe = {sugar: 5, flour: 10, salt: 2, pepper: 4}

hight = recipe.select { |ingredient, teaspoons| teaspoons >= 5 }
p hight
# {:sugar=>5, :flour=>10}

hight = recipe.reject { |ingredient, teaspoons| teaspoons >= 5 }
p hight
# {:salt=>2, :pepper=>4}

puts 'select odds'
odd = recipe.select { |ingredient, teaspoons| teaspoons.odd? }
p odd
# {:sugar=>5}

puts 'reject odds'
even = recipe.reject { |ingredient, teaspoons| teaspoons.odd? }
p even# {:flour=>10, :salt=>2, :pepper=>4}

puts 
reject_s = recipe.reject { |ingredient, teaspoons| ingredient.to_s.include?('s') }
p reject_s
# {:flour=>10, :pepper=>4}

puts
include_s = recipe.select { |ingredient, teaspoons| ingredient.to_s.include?('s') }
p include_s # letter s
# {:sugar=>5, :salt=>2}
