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
puts

number = [1, 2, 3, "Hi", 5, 6, 7, 8]

number.each do |num|
  if num.is_a?(Fixnum)
    puts "The square of #{num} is #{num ** 2}"
  else
    puts "That's not a valid number"
    break
  end
end