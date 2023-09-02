puts "Simple calculator"
25.times { print "-"}
puts
puts "Enter the first number: "
num1 = gets.chomp

puts "Enter the second number: "
num2 = gets.chomp

puts "The #{num1} multiplied by #{num2} is #{num1.to_f * num2.to_f}"
puts "The #{num1} divided by #{num2} is #{num1.to_f / num2.to_f}"
puts "The #{num1} subtracted from #{num2} is #{num1.to_f - num2.to_f}"
puts "The #{num1} added to #{num2} is #{num1.to_f + num2.to_f}"
puts
puts "The #{num1} mod (%) #{num2} is #{num1.to_f % num2.to_f}"