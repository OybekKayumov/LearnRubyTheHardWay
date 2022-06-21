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

puts
#todo Unpack a Multidimensional Array
users = [
  ['bob', 25, 'male'],
  ['susan', 21, 'female'],
  ['larry', 41, 'male'],
]
p users[0]
# ["bob", 25, "male"]

p users[1][2]   # "female"

bob, susan, larry, tom = users

p bob
p susan
p larry
p tom
# ["bob", 25, "male"]
# ["susan", 21, "female"]
# ["larry", 41, "male"]
# nil

puts
# todo The .partition Method on an Array

foods = ['steak', 'vegetables', 'steak burger', 'kale', 'tofu', 'tuna steaks']

eat_today = foods.select { |food| food.include?("steak") }
eat_tomorrow = foods.reject { |food| food.include?("steak") }

p eat_today
p eat_tomorrow
# ["steak", "steak burger", "tuna steaks"]
# ["vegetables", "kale", "tofu"]

p foods.partition { |food| food.include?('steak') }
# [["steak", "steak burger", "tuna steaks"], ["vegetables", "kale", "tofu"]]
puts
today, tomorrow = foods.partition { |food| food.include?('steak') }
p today
p tomorrow
# ["steak", "steak burger", "tuna steaks"]
# ["vegetables", "kale", "tofu"]
