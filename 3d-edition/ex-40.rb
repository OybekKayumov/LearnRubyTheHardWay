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

#! three ways to get things from things:

# dict style
# mystuff['apples']

# module style
# MyStuff.apples()
# puts MyStuff::TANGERINE

# class style
# thing = MyStuff.new()
# thing.apples()
# puts thing.tangerine

# todo: first class example
class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song
    @lyrics.each { |line| puts line }
  end
end

puts
happy_bday = Song.new([
  "Happy birthday to you",
  "I don't want to get sued",
  "So I'll stop right there"
])

bulls_on_parade = Song.new([
  "They rally around tha family",
  "With pockets full of shells"
])

happy_bday.sing_me_a_song()
bulls_on_parade.sing_me_a_song()

# Happy birthday to you
# I don't want to get sued
# So I'll stop right there
# They rally around tha family
# With pockets full of shells
