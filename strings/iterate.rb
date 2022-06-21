# Iterate over String Characters
"Hello world".each_char { |letter| puts letter }
# H
# e
# l
# l
# o

# w
# o
# r
# l
# d

name = "Jerry"

p name.split(" ")
# ["Jerry"]

p name.split("")
# ["J", "e", "r", "r", "y"]
p name.chars
# ["J", "e", "r", "r", "y"]

letters = name.chars
letters.each {|letter| puts "#{letter} is present"}

# J is present
# e is present
# r is present
# r is present
# y is present

#todo The .join Method on an Array
