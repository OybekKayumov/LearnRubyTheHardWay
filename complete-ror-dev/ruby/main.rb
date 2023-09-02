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

# 22. Brief look at comparison operators
# ==
# ===
# !=
# > < <= >=

10.eql?(10.0)   # false
# eql? is comparing the types
# if integer and float are the same type

# TODO: 23. Methods
def multiply(a, b)
  a.to_f * b.to_f
end

def divide(a, b)
  a.to_f / b.to_f
end

def subtract(a, b)
  a.to_f - b.to_f
end

def add(a, b)
  a.to_f + b.to_f
end

def mod(a, b)
  a.to_f % b.to_f
end

puts multiply(12, 4)    # 48.0
puts divide(12, 4)      # 3.0
puts subtract(12, 4)    # 8.0
puts add(12, 4)         # 16.0
puts mod(12, 4)         # 0.0

# 24. Branching if/elsif/else/end
puts "What do you want to do? 1) multiply 2) divide 3) subtract 4) add 5) find remainder"
prompt = gets.chomp
puts "Enter in your first number"
first_number = gets.chomp
puts "Enter in your second number"
second_number = gets.chomp
if prompt == '1'
  puts "You have chosen to multiply #{first_number} with #{second_number}"
  puts result = multiply(first_number, second_number)
elsif prompt == '2'
  puts "You have chosen to divide"
  puts result = divide(first_number, second_number)
elsif prompt == '3'
  puts "You have chosen to subtract"
  result = subtract(first_number, second_number)
elsif prompt == '4'
  puts "You have chosen to add"
  puts result = add(first_number, second_number)
elsif prompt == '5'
  puts "You have chosen to find the remainder"
  puts result = mod(first_number, second_number)
else
  puts "You have made an invalid choice"
end
