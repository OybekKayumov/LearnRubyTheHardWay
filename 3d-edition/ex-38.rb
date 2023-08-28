ten_things = "Apples Oranges Crows Telephone Light Sugar"
puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')
more_stuf = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items

while stuff.length != 10
  next_one = more_stuf.pop
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]    # whoa! fancy
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join('#')

# Wait there are not 10 things in that list. Let's fix that.
# Adding: Boy
# There are 7 items now.
# Adding: Girl
# There are 8 items now.
# Adding: Banana
# There are 9 items now.
# Adding: Corn
# There are 10 items now.
# There we go: ["Apples", "Oranges", "Crows", "Telephone", "Light", "Sugar", "Boy", "Girl", "Banana", "Corn"]
# Let's do some things with stuff.
# Oranges
# Corn
# Corn
# Apples Oranges Crows Telephone Light Sugar Boy Girl Banana
# Telephone#Light#Sugar