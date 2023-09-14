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

end

class Tandem < Bicycle

  def initialize(gears)
    super
    @seats = 2
  end
end

