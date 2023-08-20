print "Give me a number: "
# number = gets.chomp.to_f
number = $stdin.gets.chomp.to_f

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
# another = gets.chomp
another = $stdin.gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller number is #{smaller}."

# Give me a number: 10
# A bigger number is 1000.0.
# Give me another number: 35
# A smaller number is 0.35.

