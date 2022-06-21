# The .include? Predicate Method on an Array
p 'hello'.include?("l") # true

numbers = [1, 2, 3, 4, 5]
p numbers.include?(3)   # true

p numbers.include?(30)   # false

puts
fruits = ['apple', 'banana', 'kiwi', 'grape']
p fruits.include?('apple')
# true

p fruits.include?('strawberry')
# false

#todo The .index and .find_index Methods on an Array
colors = ['red', 'blue', 'green', 'yellow', 'red']

puts
p colors.index('green') #2
p colors.index('blue') #1

p colors.index('red') #!0 when many similar, it returns first elements index
p colors.find_index('green') #2

p colors.index('orange') # nil
