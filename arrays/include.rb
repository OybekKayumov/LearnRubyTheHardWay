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

puts
#todo The .select Method on an Array
grades = [80, 95, 14, 78, 36]

matches = grades.select do |number|
  number >=75
end

p matches
# [80, 95, 78]

matches2 = grades.select do |number|
  number.even?
end
p matches2
# [80, 14, 78, 36]

words = ['level', 'racecar', 'selfless', 'dinosaur']

p palindromes = words.select { |word| word == word.reverse }
# ["level", "racecar"]

# todo The .reject Method on an Array
animals = ['cheetah', 'cat', 'lion', 'elephant', 'dog', 'cat']

reject_res = animals.reject { |animal| animal.include?('c')}
p reject_res 
# ["lion", "elephant", "dog"]
select_res = animals.select { |animal| animal.include?('c')}

p select_res
# ["cheetah", "cat", "cat"]
