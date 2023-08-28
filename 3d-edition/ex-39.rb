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
states = [
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
]

# create a basic set of states and some cities in them
cities = {
  'CA' => "San Francisco",
  'MI' => "Detroit",
  'FL' => "Jacksonville",
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
# puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Michigan's abbreviation is: #{states['Michigan']}"

# puts "Florida's abbreviation is: #{states['Florida']}"
puts "Florida's abbreviation is: #{states['Florida']}"
