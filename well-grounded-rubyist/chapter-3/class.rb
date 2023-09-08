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

