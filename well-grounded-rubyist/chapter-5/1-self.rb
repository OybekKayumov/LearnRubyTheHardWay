# Self is the “current” or “default” object, a role typically assigned to many objects in sequence (though only one at a time) as a program runs.

# If you know what scope you’re in and know what object is self, you’ll be able to tell what’s going on, and you’ll be able to analyze errors quickly.

# Examining self via calls to puts in class and module definitions
class C
  puts "Just started class C: "
  puts self

  module M
    puts "Nested module C::M: "
    puts self
  end

  puts "Back in the outer level of C: "
  puts self

  def x
    puts "Class C, method x: "
    puts self
  end
end

# Just started class C: 
# C
# Nested module C::M:
# C::M
# Back in the outer level of C:
# C

c = C.new
c.x
puts "That was a call to x from: #{c}"
# Class C, method x:
#<C:0x000002bf23f80ea0>
# That was a call to x from: #<C:0x000002bf23f80ea0> 