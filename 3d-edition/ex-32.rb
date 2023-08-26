the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages
for number in the_count
  puts "This is count #{number}"
end

# same as above, but in a more Ruby style
# this and the next one are the preffered
# way Ruby for-loops are written
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax (way to write it).
change.each { |i| puts "I got #{i}" }

# we can also build lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
(0..5).each do |i|
  puts "Adding #{i} to the list."

  # pushes the i variable on the *end* of the list
  elements.push(i)
end

# now we can print them out too
elements.each { |i| puts "Element was: #{i}" }


# This is count 1
# This is count 2
# This is count 3
# This is count 4
# This is count 5
# A fruit of type: apples
# A fruit of type: oranges
# A fruit of type: pears
# A fruit of type: apricots
# I got 1
# I got pennies
# I got 2
# I got dimes
# I got 3
# I got quarters
# Adding 0 to the list.
# Adding 1 to the list.
# Adding 2 to the list.
# Adding 3 to the list.
# Adding 4 to the list.
# Adding 5 to the list.
# Element was: 0
# Element was: 1
# Element was: 2
# Element was: 3
# Element was: 4
# Element was: 5