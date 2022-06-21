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

names = ['Joe', 'Moe', 'Bob']
p names.join
# "JoeMoeBob"
p names.join('-')
# "Joe-Moe-Bob"

puts
p ['h', 'e', 'l', 'l', 'o'].join
# "hello"

puts
def custom_join(arr, delimeter = "")
  str = ""
  last_element = arr.length - 1
  arr.each_with_index do |elem, index|
    str << elem 
    # unless index == arr.length - 1 # last element
    # if index != arr.length - 1 # last element
      # str << delimeter   
    # end
    str << delimeter unless index == last_element  
  end

  str  
end

p custom_join(names)
p custom_join(names, "-")
# "JoeMoeBob"
# "Joe-Moe-Bob", NOT "Joe-Moe-Bob-"

p custom_join(names, "!---!")
# "Joe!---!Moe!---!Bob"
