# 26. Arrays and Iterators
arr = [1,2,3,4,5,6,7,8,9]
p arr
print arr
puts arr

# [1, 2, 3, 4, 5, 6, 7, 8, 9]
# [1, 2, 3, 4, 5, 6, 7, 8, 9]1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9

arr << 10
arr.first
arr.unshift("Hello")
arr.append("Hi")
p arr
# ["Hello", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Hi"]  

p arr.empty?            # false
p arr.include?("Hi")    # true

arr.push("John")

p arr.join
p arr.join("-")
p arr.join(", ")
# "Hello12345678910HiJohn"
# "Hello-1-2-3-4-5-6-7-8-9-10-Hi-John"
# "Hello, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Hi, John" 

puts 
b = arr.join("-")
p b.split
p b.split("-")
# ["Hello-1-2-3-4-5-6-7-8-9-10-Hi-John"]
# ["Hello", "1", "2", "3", "4", "5", "6", "7", "8", 
# "9", "10", "Hi", "John"]

puts 
p arr.last    # 9

x = "a".."z"
p x.to_a
# ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

puts
p y = x.to_a.shuffle
# ["x", "u", "g", "e", "a", "r", "y", "m", "w", "i", "t", "b", "h", "f", "o", "s", "c", "n", "z", "p", "d", "l", "k", "q", "j", "v"]

puts
#! create array
p %w(my name is joe and this is great Ruby is amazing)
# ["my", "name", "is", "joe", "and", "this", "is", "great", "Ruby", "is", "amazing"]

# z = _   # repeat last expression, cmd in irb
# p z
# ["my", "name", "is", "joe", "and", "this", "is", "great", "Ruby", "is", "amazing"]

z = %w(my name is joe and this is great Ruby is amazing)

puts
for i in z
  print i + " "
end

puts
z.each do |word|
  print word + " "
end

puts

z.each { |word| print word + "**"}
# my name is joe and this is great Ruby is amazing  
# my name is joe and this is great Ruby is amazing  
# my**name**is**joe**and**this**is**great**Ruby**is**amazing**

z.each { |word| print word.capitalize + "**"}

p new_arr = (1..100).to_a
p new_arr.select {|num| num.odd?}
# [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99] 

p arr.methods

arrayname.reverse! # use ! at the end to change the original array
arrayname << 25 # << known as shovel operator will also append new element to the end of the array
