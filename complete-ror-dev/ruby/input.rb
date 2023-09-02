puts "what is your name?"
f_name = gets.chomp
puts "what is last name?"
l_name = gets.chomp

puts "thank you, you said your first name is #{f_name}"
puts "your full name is #{f_name} #{l_name}"
puts "your full name reversed is #{f_name.reverse} #{l_name.reverse}"
puts "your name has #{f_name.length + l_name.length} chars in it"
puts "your name has #{f_name.size + l_name.size} size in it"

puts "Enter a number to multiply by 2"
number = gets.chomp
puts number.to_i * 2     # 5 --> 55
