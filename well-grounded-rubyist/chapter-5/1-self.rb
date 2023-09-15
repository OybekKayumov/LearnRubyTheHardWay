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

  def C.y
    puts "Class method of class C"
    puts "self: #{self}"
  end

  # def self.z is the same as def C.y.
  def self.z
    puts "Class method of class C"
    puts "self: #{self}"
  end

  # another syntax class << self instructs the class that the following methods will be class methods. Notice the end keyword that declares the end of the class-definition grouping
  class << self
    def x1
      # definition ov x1
    end

    def y1
      # definition of y1
    end
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

puts
C.y
# Class method of class C
# self: C

puts
class C
  def C.no_dot
    puts "As long as self is C, you can call this method with no dot"
  end
  
  no_dot
end
puts
C.no_dot
# As long as self is C, you can call this method with no dot
# As long as self is C, you can call this method with no dot

class C
  def x
    puts "This is method 'x'"
  end
  
  def y
    puts "This is method 'y', about to call x without a dot."
    x
  end
end

c = C.new
c.y
# This is method 'y', about to call x without a dot.
# This is method 'x'

# Composing whole name from values, using method calls on implicit self
class Person
  attr_accessor :first_name, :middle_name, :last_name

  def whole_name
    n = first_name + " "
    n << "#{middle_name} " if middle_name
    n << last_name
  end
end

puts "5.2------------"
david = Person.new
david.first_name = "David"
david.last_name = "Black"
puts "David's whole name: #{david.whole_name}"
david.middle_name = "Alan"
puts "David's new whole name: #{david.whole_name}"
# David's whole name: David Black
# David's new whole name: David Alan Black

# Resolving instance variables through self
class A
  def set_v
    @v = "I am a instance variable and I belong to any instance of A."
  end
  
  def show_var
    puts @v
  end
  
  def self.set_v
    @v = "I am an instance variable and I belong to A."
  end
end

puts
A.set_v
a = A.new
a.set_v
a.show_var
# I am a instance variable and I belong to any instance of A.

# Demonstrating the relationship between instance variables and self
puts "5.3---------------"
class B
  puts "Just inside class definition block. Here's self:"
  p self
  @v = "I am an instance variable at the top of a class body."
  puts = "And here's the instance variable @v, belonging to #{self}:"
  p @v

  def show_var
    puts "Inside an instance method definition block. Here's self:"
    p self
    puts "And here's the instance variable @v, belonging to #{self}:"
    p @v
  end
end


b = B.new
b.show_var

# Just inside class definition block. Here's self:
# B
# "I am an instance variable at the top of a class body."
# Inside an instance method definition block. Here's self:
# #<B:0x00000168a43f6070>
# And here's the instance variable @v, belonging to #<B:0x00000168a43f6070>:
# nil
