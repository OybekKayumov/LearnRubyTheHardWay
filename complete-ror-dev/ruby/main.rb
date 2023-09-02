puts "hello".class

puts 10.class
puts 10.0.class
# String
# Integer
# Float

#? p "hi".methods

# method chaining
p 10.to_s.class  # String

puts
p "hello".length
p "hello".reverse
p "hello".capitalize
p "hello".empty?
p "hello".nil?
# 5
# "olleh"
# "Hello"
# false
# false

puts
p nil.nil?  # true

puts 
sentence = "Welcome to the jungle"
p sentence
p sentence.sub("the jungle", "utopia")
# "Welcome to the jungle"
# "Welcome to utopia"

#! gsub is global substitute

#  todo: 
puts "pass by value or pass by reference and assignment"
f_name = "John"
new_f_name = f_name

f_name = "Joe"
p new_f_name    # "John"
p f_name        # "Joe"

puts
# \ escape
p 'John asked \'Hey Bob, how are you doing?\''
# "John asked 'Hey Bob, how are you doing?'"

# todo: && and || are logical operators.
5 && 6
# 6
5 || 6
# 5

# 1)  && operator returns the second argument if first argument is true and returns false if first argument or second argument is false . So 5 && 6 returns 6 as 5 is true
# 2) || operator returns the first number if the first number is true and it does not check the second number for truthiness and returns false if both arguments are false. So 5 || 6 returns 5 as 5 is true. 