
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

