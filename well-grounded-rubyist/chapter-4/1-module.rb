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
