module MyModule
  def ruby_version
    system("ruby -v")
  end
end

class ModuleTester
  include MyModule

end

mt = ModuleTester.new
mt.ruby_version
# ruby 3.2.1 (2023-02-08 revision 31819e82c8) [x64-mingw-ucrt]

module Stacklike
  def stack
    @stack ||= []   # or-equals operator
  end
  
  def add_to_stack(obj)
    stack.push(obj)
  end
  
  def take_from_stack
    stack.pop
  end
end

# require_relative "stacklike"

class Stack
  include Stacklike
end

s = Stack.new
s.add_to_stack("item one")
s.add_to_stack("item two")
s.add_to_stack("item three")

puts "Ojects currently on the stack:"
puts s.stack

# Ojects currently on the stack:
# item one
# item two
# item three

taken = s.take_from_stack
puts "Removed this object:"
puts taken
# Removed this object:
# item three

puts "Now on stack:"
puts s.stack
# Now on stack:
# item one
# item two


# Nonmodular rewrite of the Stack class
class Stack_NM
  attr_reader :stack

  def initialize
    @stack = []
  end

  def add_to_stack(obj)
    @stack.push(obj)
  end

  def take_from_stack
    @stack.pop
  end
end

st = Stack_NM.new
st.add_to_stack("item 1")
st.add_to_stack("item 2")
st.add_to_stack("item 3")

puts "Ojects currently on the stack:"
puts st.stack

# Ojects currently on the stack:
# item 1
# item 2
# item 3

taken = st.take_from_stack
puts "Removed this object:"
puts taken
# Removed this object:
# item 3

puts "Now on stack:"
puts st.stack
# Now on stack:
# item 1
# item 2
