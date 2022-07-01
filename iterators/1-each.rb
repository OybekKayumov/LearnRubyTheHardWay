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

p [1, 2, 3, 4, 5].reduce(10) { |m, x| m * x }# 1200

puts
# each_with_object
arr = [1, 2, 3, 4, 5].each_with_object([]) do |x, m|
  m << x * x if x.even?
end
p arr # [2, 4]


puts 
# tap : getting an intermediate result
# 1
res = (1..7).select {|x| x.even? }.reduce do |m, x|
  puts "debug: #{x}"
  m + x
end

p res
# debug: 4
# debug: 6
# 12

res_tap = (1..7).select {|x| x.even? }
  .tap { |x| puts "debug: #{x}" }
  .reduce { |m, x| m + x }

p res
# debug: [2, 4, 6]
# 12

puts
# tap other uses 
def hash_return(params)
  params[:page] = 1
  # params
end

p hash_return(per_page: 10)
# {:per_page=>10, :page=>1}

# returns '1' without "param"

puts
def hash_return_tap(params)
  params.tap { |p| p[:page] = 1 }
end

p hash_return_tap(per_page: 10)
# {:per_page=>10, :page=>1}
