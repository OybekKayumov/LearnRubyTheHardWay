# Using the super keyword to reach up one level in the lookup path
module M
  def report
    puts "'report' method in module M"
  end
end

class C
  include M

  def report
    puts "'report' method in class C"
    puts "About to trigger the next higher-up report method..."
    super
    puts "Back from the 'super' call."
  end
end

c = C.new
c.report

# 'report' method in class C
# About to trigger the next higher-up report method...
# 'report' method in module M
# Back from the 'super' call.

# Using super to wrap a method in a subclass
class Bicycle
  attr_reader :gears, :wheels, :seats

  def initialize(gear = 1)
    @wheels = 2
    @seats = 1
    @gears = gears
  end

  def rent
    puts "Sorry but this model is sold out."
  end
end

class Tandem < Bicycle

  def initialize(gears)
    super
    @seats = 2
  end

  def rent
    puts "This bike is available!"
  end
end

puts "----------------------"
p t = Tandem.new(1)
#<Tandem:0x00000230aa4dc5d8 @wheels=2, @seats=2, @gears=nil>

p t.method(:rent)
#<Method: Tandem#rent()>

p t.method(:rent).super_method
#<Method: Bicycle#rent()>

p t.method(:rent).call
# This bike is available!

p t.method(:rent).super_method.call
# Sorry but this model is sold out.

puts
p t.method(:rent).super_method.super_method
# nil

