mystuff = {'apple' => "I am Apples."}
puts mystuff['apple']                 # I am Apples.

module MyStuff
  def MyStuff.apple()
    puts "I am Apples!"
  end

  # this is just a variable
  TANGERINE = "Living reflection of a dream"
end

puts
MyStuff.apple()
puts MyStuff::TANGERINE  # I am Apples!

mystuff['apple']    # get apple from dict
MyStuff.apple()     # get apple from the module
MyStuff::TANGERINE  # same thing, it's just a variable

# todo: classes
class MyStuffClass
  def initialize()
    @tangerine = "And now a thousand years between"
  end

  attr_reader :tangerine

  def apple()
    puts "I am classy Apples!"
  end
end

puts "class-------------"
thing = MyStuffClass.new()
thing.apple()               # I am classy Apples!
puts thing.tangerine        # And now a thousand years between

