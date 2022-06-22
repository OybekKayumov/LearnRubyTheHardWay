# Object Pointers and Object Copies
a = [1, 2, 3]
b = [1, 2, 3]

p a.object_id # 60
p b.object_id # 80

p a.object_id == b.object_id #! false

puts 
b = a
puts b.object_id # 60
p a.object_id == b.object_id #! true

puts
b.push(4)
p a
p b
# [1, 2, 3, 4]
# [1, 2, 3, 4]

puts
c = a.dup
p a.object_id == c.object_id #! false

p a
# [1, 2, 3, 4]
p c
# [1, 2, 3, 4]

a.push(5)
p a
# [1, 2, 3, 4, 5]

p c
# [1, 2, 3, 4]