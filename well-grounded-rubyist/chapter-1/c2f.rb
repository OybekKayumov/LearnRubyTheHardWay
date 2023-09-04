# print "Hello. Please enter a Celsius value: "
puts "Reading Celsius temperature value from data file...: "
num = File.read("./temp.dat")

# celsius = 100
# celsius = gets
celsius = num.to_i

# fahrenheit = (celsius.to_i * 9 / 5) + 32
fahrenheit = (celsius * 9 / 5) + 32

puts "The Celsius is: " + num
print "The Fahrenheit equivalent is: "
print fahrenheit
puts "."

# 1
# ruby -cw c2f.rb
# Syntax OK
# The result is 212.

# 3
# Reading Celsius temperature value from data file...: 
# The Celsius is: 100
# The Fahrenheit equivalent is: 212.
