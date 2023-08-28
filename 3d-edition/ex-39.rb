# Array
things = ["a", "b", "c", "d"]
p things
# ["a", "b", "c", "d"]

puts things[1]    # b

things[1] = "z"
puts things[1]    # z

p things
# ["a", "z", "c", "d"]

puts
# Hash
stuff = {'name' => 'Zed', 'age' => 39, 'height' => 6 * 12 + 2}
p stuff
# {"name"=>"Zed", "age"=>39, "height"=>74}

puts stuff['name']    # Zed
puts stuff['age']     # 39
puts stuff['height']  # 74
puts
stuff['city'] = "San Francisco"
print stuff['city']   # San Francisco

puts
stuff[1] = "Wow"
stuff[2] = "Neato"

puts stuff
# {"name"=>"Zed", "age"=>39, "height"=>74, "city"=>"San Francisco", 1=>"Wow", 2=>"Neato"}

puts
stuff.delete('city')
stuff.delete(1)
stuff.delete(2)
puts stuff
# {"name"=>"Zed", "age"=>39, "height"=>74}

# create a mapping of state to abbreviation
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

# create a basic set of states and some cities in them
cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

# do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

# now do both at the same time
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
# by default Ruby says "nil" when something isn't in there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

# default values using ||= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"

# ----------
# NY State has: New York
# OR State has: Portland
# ----------
# Michigan's abbreviation is: MI
# Florida's abbreviation is: FL
# ----------
# Michigan has: Detroit
# Florida has: Jacksonville
# ----------
# Oregon is abbreviated OR
# Florida is abbreviated FL
# California is abbreviated CA
# New York is abbreviated NY
# Michigan is abbreviated MI
# ----------
# CA has the city San Francisco
# MI has the city Detroit
# FL has the city Jacksonville
# NY has the city New York
# OR has the city Portland
# ----------
# Oregon is abbreviated OR and has city Portland
# Florida is abbreviated FL and has city Jacksonville
# California is abbreviated CA and has city San Francisco
# New York is abbreviated NY and has city New York
# Michigan is abbreviated MI and has city Detroit
# ----------
# Sorry, no Texas.
# The city fpr the state 'TX' is: Does Not Exist
