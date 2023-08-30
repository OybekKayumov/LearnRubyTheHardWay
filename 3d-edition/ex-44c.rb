class Parent
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.altered()
son.altered()

# PARENT altered()
# CHILD, BEFORE PARENT altered()
# PARENT altered()
# CHILD, AFTER PARENT altered()