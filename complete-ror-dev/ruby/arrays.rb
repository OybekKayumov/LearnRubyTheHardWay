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
p arr.last    # 9

x = "a".."z"
p x.to_a
# ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

puts
p y = x.to_a.shuffle
# ["x", "u", "g", "e", "a", "r", "y", "m", "w", "i", "t", "b", "h", "f", "o", "s", "c", "n", "z", "p", "d", "l", "k", "q", "j", "v"]

