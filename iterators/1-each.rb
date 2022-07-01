rainbow = %w[red orange yellow green gray indogo violet]

# use cicle for
for color in rainbow
  puts color
end

# red
# orange
# yellow
# green
# gray
# indogo
# violet

puts
# use each
rainbow.each { |color| puts color }

# times
5.times {|t| puts t}

# 0
# 1
# 2
# 3
# 4

puts
# upto and downto
5.upto(10) {|t| puts t}

15.downto(10) {|t| puts t}

# Iterator            Synonym
# each
# each_with_index
# map                 collect
# select              find_all
# reject              delete_if
# reduce              inject
# each_with_object

puts
# each, no mutation
arr = [1, 2, 3, 4, 5]

res = arr.each { |x| puts x ** 2 }
p res
1
4
9
16
25
[1, 2, 3, 4, 5] # returns arr

puts
# each_with_index
rainbow = %w[red orange yellow green gray indogo violet]
rainbow.each_with_index { |color, ind| puts "#{ind}: #{color}" }

# 0: red
# 1: orange
# 2: yellow
# 3: green
# 4: gray
# 5: indogo
# 6: violet

puts 
# map, return new collection
res = [1, 2, 3, 4, 5].map { |x| x +1 }
p res 
# [2, 3, 4, 5, 6]

puts
arr = []
[1, 2, 3, 4, 5].each { |x| arr << x * x }
p arr 
# [1, 4, 9, 16, 25]

puts 
# select, blocks return true or false
p [1, 2, 3, 4, 5].select { |x| x.even? }  # [2, 4]

p [1, 2, 3, 4, 5].reject { |x| x.even? }  # [1, 3, 5]

puts 
p [1, 2, 3, 4, 5].select { |x| x.even? }.map { |y| y * y }  # [4, 16]

puts
# reduce
p [1, 2, 3, 4, 5].reduce { |m, x| m * x }# 120
