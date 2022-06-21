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

  
end

p custom_squeeze(sentence2)
