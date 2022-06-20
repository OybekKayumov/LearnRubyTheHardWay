prizes = ['Pyrite', 'Pyrite', 'Pyrite', 'Gold', 'Pyrite']

i = 0

while i < prizes.length
  current = prizes[i]

  if current == "Gold"
    puts 'Hey! Found gold!'
    break
  else 
    puts "#{current} is not gold"
  end

  i += 1
end

# Pyrite is not gold
# Pyrite is not gold
# Pyrite is not gold
# Hey! Found gold!

