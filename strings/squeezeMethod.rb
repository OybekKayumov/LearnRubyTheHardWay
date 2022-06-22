# The .squeeze Method

sentence = "Thhe aardvark jummmped    over the fence!  ! !"
puts sentence.squeeze
# remove any duplicate characters 
# The ardvark jumped over the fence! ! !
puts
sentence1 = "Thhe aaardvaaark jummmped    over the fence!  ! !"
puts sentence1.squeeze("a")
# Thhe ardvark jummmped    over the fence!  ! !
puts sentence1.squeeze(" ")

puts sentence1.squeeze(" h")

puts 
puts sentence.squeeze!
#! overwrite, mutates object
puts sentence

puts
sentence2 = "Thhe aardvarkk jummmped    over the fence!  ! !"

def custom_squeeze(string)
  final = ''
  chars = string.split('') # = as "string.chars", returns an array of characters

  chars.each_with_index {|char, index| char == chars[index + 1] ? next : final << char }

  final

end

p custom_squeeze(sentence2)
# "The ardvark jumped over the fence! ! !"
