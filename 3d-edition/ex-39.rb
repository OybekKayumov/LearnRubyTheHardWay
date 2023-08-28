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
