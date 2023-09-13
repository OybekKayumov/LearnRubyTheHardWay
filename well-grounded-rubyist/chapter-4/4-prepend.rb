module MeFirst
  def report
    puts "Hello from module!"
  end
end

class Person
  prepend MeFirst

  def report
    puts "Hello from class!"
  end
end

p = Person.new
p.report
# Hello from module!

# The difference (include) is that if you "prepend" a module to a class, the object looks in that module first, before it looks in the class.

#! extend
# include will make a module’s methods available as instance methods.
# extend, will make a module’s methods available as class methods.
class Temperature
  def Temperature.c2f(celsius)
    celsius * 9.0 / 5 + 32
  end
  
  def Temperature.f2c(fahrenheit)
    (fahrenheit - 32) * 5 / 9.0
  end
end

module Convertible
  def c2f(celsius)
    celsius * 9.0 / 5 + 32
  end

  def f2c(fahrenheit)
    (fahrenheit - 32) * 5 / 9.0
  end
end

class Thermometer
  extend Convertible
end

puts Temperature.c2f(100)  # 212.0
puts Temperature.f2c(212)  # 100.0
