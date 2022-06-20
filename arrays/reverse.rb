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

#tood sort