p "hello".reverse
p [1, 2, 3].reverse
p ["A", "B", "C"].reverse

puts
queue = [4, 8, 15, 16, 23, 42]
p queue
queue.reverse
p queue
# [4, 8, 15, 16, 23, 42]
# [4, 8, 15, 16, 23, 42]

#mutate object !
queue.reverse!
p queue

# [42, 23, 16, 15, 8, 4]
puts

#todo sort
number = [4, 2, 3, 1, 8, 7, 6, 5, 9]
words = ["caterpillar", "kangaroo", "apple", "zebra"]
Words = ["caterpillar", "kangaroo", "apple", "Zebra"]

p number.sort
p words.sort
# [1, 2, 3, 4, 5, 6, 7, 8, 9]
# ["apple", "caterpillar", "kangaroo", "zebra"]

p Words.sort
#* ["Zebra", "apple", "caterpillar", "kangaroo"]

#! will overwrite the original array object 
# number.sort!
# words.sort!

puts
p number.sort.reverse
p words.sort.reverse
# [9, 8, 7, 6, 5, 4, 3, 2, 1]
# ["zebra", "kangaroo", "caterpillar", "apple"]

puts
# todo concat, modify oroginal array
p [1, 2, 3] + [4, 5]
p [1, 2, 3].concat([4, 5])
# [1, 2, 3, 4, 5]

num = [1, 2, 3]
p num
# [1, 2, 3]

num.concat([4, 5, 6])
p num
# [1, 2, 3, 4, 5, 6]

puts
a = [1, 2, 3]
b = [4, 5, 6]

def custom_concat(arr1, arr2)
  arr2.each { |elem| arr1 << elem }
  arr1  
end

p custom_concat(a, b)
# [1, 2, 3, 4, 5, 6]

p a
# [1, 2, 3, 4, 5, 6]

puts
#todo max and min values
stock_prices = [712.99, 487.12, 86.5, 651,92]

p stock_prices.max
p stock_prices.min
# 712.99
# 86.5

fruits = ['apple', 'kivi', 'banana', 'watermelon']

p fruits.max
p fruits.min
# "watermelon"
# "apple"

puts
def custom_max(arr)
  arr.sort[-1]    #last element of array
end

def custom_min(arr)
  arr.sort[0]    #first element of array  
end

numbers = [3, 9, 5, 7, 10, 1]
p custom_max(numbers)
p custom_min(numbers)
# 10
# 1

