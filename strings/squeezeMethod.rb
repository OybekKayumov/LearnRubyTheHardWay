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
puts

# todo .clear Method on a String
# returns an empty string

sentence3 = "Thhe aardvarkk jummmped    over the fence!  ! !"
sentence3.clear
p sentence3
""
word = "goodbye"
p word
word.clear
p word
#! clear method mutates an original object

# todo the .delete Method on a String

puts "hello world".delete("l")
# heo word

puts "hello world".delete("ldr")
# heo wo

puts
def custom_delete(str, delete_chars)
  new_str = ''
  # str.each_char do |char|
  #   unless delete_chars.include?(char)
  #     new_str << char
  #   end    
  # end

  #todo same 
  str.each_char {|char| new_str << char unless delete_chars.include?(char) }
        
  new_str
end

p custom_delete("Hello world", "l")
# "Heo word"
