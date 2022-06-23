# Union - Combine Arrays and Exclude Duplicates

# union combines multiple arrays into one and then removes any duplicates from that final array as well.
# union is a representation of all of the unique elements across all of the arrays.

p [1, 2, 3] | [3, 4, 5]
# [1, 2, 3, 4, 5]

p [1, 1, 2, 2, 3, 3] | [3, 4, 4, 5, 5]
# [1, 2, 3, 4, 5]

p [1, 2, 3].|([3, 4, 5])
# [1, 2, 3, 4, 5]

puts
a = [1, 1, 2, 2, 3, 3]
b = [3, 4, 4, 5, 5]

def custom_union(arr1, arr2)
  arr1.dup.concat(arr2).uniq
end

p custom_union(a, b)
# [1, 2, 3, 4, 5]

puts
# todo  Remove Array Items that Exist in Another Array
p [1, 1, 2, 2, 3, 2, 3, 3, 4, 4, 5] - [2, 3]
# [1, 1, 4, 4, 5]
p [1, 1, 2, 2, 3, 2, 3, 3, 4, 4, 5].-([2, 3])
p [1, 1, 2, 2, 3, 2, 3, 3, 4, 4, 5].- [2, 3]
puts
p [1, 1, 2, 2, 3, 2, 3, 3, 4, 4, 5].- [1, 4, 5]
# [2, 2, 3, 2, 3, 3]

puts
a = [1, 1, 2, 2, 3, 2, 3, 3, 4, 4, 5]
b = [1, 4, 5]

def custom_subtraction(arr1, arr2)
  final = []
  
  arr1.each { |val| final << val unless arr2.include?(val) }
  
  final
end

p custom_subtraction(a, b)
# [2, 2, 3, 2, 3, 3]

puts
# todo Array Intersection with the Ampersand Symbol
p [1, 1, 2, 3, 4, 5] & [1, 4, 5, 8, 9]
# [1, 4, 5]

# ampersand symbol is going to get back is an array of all the elements that are present in both of arrays.  
# Notice that deduplication has also occurred, but includes one of them

p [1, 1, 2, 3, 4, 5].& [1, 4, 5, 8, 9]
p [1, 1, 2, 3, 4, 5].&([1, 4, 5, 8, 9])
# [1, 4, 5]
# [1, 4, 5]

puts 
a = [1, 1, 2, 3, 4, 5]
b = [1, 4, 5, 8, 9]

def custom_intersection(arr1, arr2)
  final = []
  
  arr1.uniq.each { |elem| final << elem if arr2.include?(elem) }
  
  final
end

p custom_intersection(a, b)
# [1, 4, 5]
