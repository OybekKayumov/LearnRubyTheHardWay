puts "Enter an integer: "
x = gets.chomp.to_i

unless x > 100
  puts "Small number!"
else 
  puts "Big number!"
end

# can be replaced with:
if x <= 100
  puts "Small number!"
else
  puts "Big number!"
end

puts
array = [1 ,2 ,3 ,4 ,5]
p array.map { |n| n * 10 }