obj = Object.new

class Ticket
  def event
    "Can't really be specified yet..."
  end
end

ticket = Ticket.new
puts ticket.event
# Can't really be specified yet...

# Overriding methods
class C
  def m
    puts "First definition of method m"
  end
  
  def m
    puts "Seconf definition of method m"
  end
end

C.new.m
# Seconf definition of method m

# Reopening classes
class C
  def x
  end
end

class C
  def y
  end
end

# same result
class C
  def x
  end

  def y
  end
end

# Instance variables and object state
ticket = Object.new
def ticket.price
  117.50
end

# The instance variable enables individual objects to remember state. 

#  Instance variable names always start with a single @ (at sign). This enables you to recognize an instance variable at a glance.
#  Instance variables are only visible to the object to which they belong. (Being “visible to an object” has a technical definition having to do with the default object self, which you’ll see more about in chapter 5.)
#  An instance variable initialized in one method inside a class can be used by any instance method defined within that class.

class Person
  def set_name(string)
    puts "Setting person's name..."
    @name = string
  end
  
  def get_name
    puts "Returning person's name..."
    @name
  end
end

joe = Person.new
joe.set_name("Joe")
puts joe.get_name
# Setting person's name...
# Returning person's name...
# Joe
