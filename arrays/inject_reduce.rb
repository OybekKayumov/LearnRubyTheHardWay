# The .inject and .reduce Methods on an Array
# They are two names for the exact same thing, much like map and collect, perform the exact same functionality.

# 0 strating value
# res = [10, 20, 30, 40].reduce(0) do |prev, curr|
res = [10, 20, 30, 40].inject(0) do |prev, curr|
  puts "The previous value is #{prev}"
  puts "The current value is #{curr}"
  
  prev + curr  
end

p res # 100
# The previous value is 0
# The current value is 10
# The previous value is 10
# The current value is 20
# The previous value is 30
# The current value is 30
# The previous value is 60
# The current value is 40
# 100

puts
# (1) if multiply
sum = [3, 4, 5, 6, 7].reduce(1) do |prev, curr|
  puts "The previous value is #{prev}"
  puts "The current value is #{curr}"
  
  prev * curr  
end

p sum # 2520

puts "The previous value is #{prev}"
  puts "The current value is #{curr}"
  
# The previous value is 1
# The current value is 3
# The previous value is 3
# The current value is 4
# The previous value is 12
# The current value is 5
# The previous value is 60
# The current value is 6
# The previous value is 360
# The current value is 7
# 2520 
