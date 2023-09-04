print "Hello. Please enter a Celsius value: "
num = File.read("./temp.dat")

# celsius = 100
# celsius = gets
celsius = num.to_i

# fahrenheit = (celsius.to_i * 9 / 5) + 32
fahrenheit = (celsius * 9 / 5) + 32

print "The Celsius is: " + num
print "The Fahrenheit equivalent is: "
print fahrenheit
puts "."

# ruby -cw c2f.rb
# Syntax OK

# The result is 212.