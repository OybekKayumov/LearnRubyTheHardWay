#todo The .uniq Method on an Array

arr = [1, 2, 3, 2, 7, 8, 7, 9, 1]

p arr.uniq
# [1, 2, 3, 7, 8, 9]

def custom_uniq(arr)
  final = []

  # arr.each { |elem| final << elem if !final.include?(elem)}
  arr.each { |elem| final << elem unless final.include?(elem)}

  final  
end

p custom_uniq(arr)
# [1, 2, 3, 7, 8, 9] if
puts 
puts
p custom_uniq(arr)
# [1, 2, 3, 7, 8, 9] unless

puts
#todo The .compact Method on an Array, removes all nil
# compact method removes all nil values from an array object,
# so anything that is a nil object will be completely deleted.
# we are going to get back a new array with all of the nil values.

# Root and nil, as a reminder, is not the same thing as false.
# False is a boolean value.
# It is a member of the false class.
# Nil is its own separate class that represents nothingness.

p [1, 2, 3].compact
# [1, 2, 3]


p [1, 2, 3, nil, 4, nil, 5].compact
# [1, 2, 3, 4, 5]

p [1, false, 2, 3, nil, false,  4, nil, 5, true].compact
# [1, false, 2, 3, false, 4, 5, true]

puts
p []  # []
p [nil]  # [nil]

p [].compact  # []
p [nil].compact  # []

puts
sports = ["soccer", "baskeyball", nil, "tennis", nil]
p sports
# ["soccer", "baskeyball", nil, "tennis", nil]

sports.compact!   #! mutates an array
p sports
# ["soccer", "baskeyball", "tennis"]

puts