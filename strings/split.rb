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

# todo write a longest_word method that accepts a string (sentence) as its only argument and retunr the longest word in the sentence

def longest_word(sentence)
  longest = ''
  words = sentence.split(' ')
  words.each do |word|
    if longest.size <= word.size 
      longest = word
    end
  end
  longest
end

p longest_word("Bobby loves big scary kangaroos") # kangaroos
p longest_word("Ruby is my favorite language") # language
# "kangaroos"
# "language"