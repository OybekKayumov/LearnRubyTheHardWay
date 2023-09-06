
obj = Object.new

def obj.talk
  puts "I am an pbject."
  puts "(Do you object?)"
end

puts obj.talk

# I am an pbject.
# (Do you object?)

# Celsius-to-Fahrenheit converter
def obj.c2f(c)
  c * 9.0 / 5 + 32
end

puts obj.c2f(100)   # 212.0

def welcome_the_user()
  puts "Hi there!"
end

print "Information desired: "
request = gets.chomp

# if request == 'venue'
#   puts ticket.venue
# elsif request == 'performer'
#   puts ticket.performer
#   .
#   .
#   .
# end

#! alternative
if ticket.respond_to?(request)
  puts ticket.send(request)
else
  puts "No such information available"
end

# TODO: method arguments
# Argument type(s)  Method signature   Sample call(s)  Variable assignments

# Required (R)	    def m(a,b,c)	     m(1,2,3)	       a = 1, b = 2, c = 3
# Optional (O)	    def m(*a)	         m(1,2,3)	       a = [1,2,3]
# Default-valued (D)	def m(a=1)	     m m(2)	         a = 1 a = 2
# R/O	              def m(a,*b)	       m(1)	           a = 1, b = [ ]
# R/D	              def m(a,b=1)	     m(2) m(2,3)	   a = 2, b = 1 a = 2, b = 3
# D/O	              def m(a=1,*b)	     m m(2)	a = 1,   b = [ ] a = 2, b = [ ]

# R/D/O	          def m(a,b=2,*c)	m(1) m(1,3) m(1,3,5,7)	a = 1, b = 2, c = [ ]
#                                                         a = 1, b = 3, c = [ ] a = 1, b = 3, c = [5,7]

# R/D/O/R	          def m(a,b=2,*c,d) 	m(1,3) m(1,3,5) 
#                                       m(1,3,5,7) m(1,3,5,7,9)	
#                                                         a = 1, b = 2, c = [ ], d = 3 a = 1, b = 3, c = [ ], d = 5 a = 1, b = 3, c = [5], d = 7 a = 1, b = 3, c = [5,7], d = 9

# Required and optional arguments
obj = Object.new
def obj.one_arg(x)
  puts "I require one and only one argument!"
end

obj.one_arg(1,2,3)
#! ArgumentError: wrong number of arguments (given 3, expected 1)

# method that allows any number of arguments
def obj.multi_args(*x)
  puts "I can take zero ot more arguments!"
end

# The *x notation means that when you call the method, you can supply any number of arguments (or none)

def two_or_more(a,b,*c)
  puts "I require two or more arguments!"
  puts "And sure enough, I got: "
  p a, b, c
end

two_or_more(1,2,3,4,5)
# I require two or more arguments!
# And sure enough, I got:
# 1
# 2
# [3, 4, 5]

# (Using p rather than print or puts results in the array being printed out in array notation. Otherwise, each array element would appear on a separate line, making it harder to see that an array is involved at all.)
# (Использование pвместо printили putsприводит к тому, что массив выводится в нотации массива. В противном случае каждый элемент массива будет отображаться в отдельной строке, что затруднит понимание того, что массив вообще задействован.)

# Default values for arguments
def default_args(a, b, c=1)
  puts "Values of variables: ", a, b, c
end

default_args(3,2)
# Values of variables:
# 3
# 2
# 1

# Order of parameters and arguments
def mixed_args(a,b,*c,d)
  puts "Arguments: "
  p a,b,c,d
end

mixed_args(1,2,3,4,5)
# Arguments:
# 1
# 2
# [3, 4]
# 5

# If you only give enough arguments to match the required arguments of the method, then the sponge array will be empty. The method call
mixed_args(1,2,3)
# 1
# 2
# []
# 3

def all_optional(*args)

end


