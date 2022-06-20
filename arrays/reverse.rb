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
