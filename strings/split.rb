# The .split Method on a String

sentence = 'Hi, my name is Tom. There are spaces here!'

p sentence.split
# ["Hi,", "my", "name", "is", "Tom.", "There", "are", "spaces", "here!"]
p sentence.split.class #! Array
puts
p sentence.split(" ")

p sentence.split(".")
# ["Hi, my name is Tom", " There are spaces here!"]

p sentence.split("m")
# ["Hi, ", "y na", "e is To", ". There are spaces here!"]

puts
words = sentence.split(" ")
words.each { |word| puts word.length}
# 3
# 2
# 4
# 2
# 4
# 5
# 3
# 6
# 5
