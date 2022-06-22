# The .uniq Method on an Array

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
