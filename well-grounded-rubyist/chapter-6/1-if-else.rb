puts "Enter an integer: "
x = gets.chomp.to_i

unless x > 100
  puts "Small number!"
else 
  puts "Big number!"
end

# can be replaced with:
if x <= 100
  puts "Small number!"
else
  puts "Big number!"
end

puts
array = [1 ,2 ,3 ,4 ,5]
p array.map { |n| n * 10 }

puts
5.times { puts "Writing this 5 times!" }

10.times { |i| puts "I'm on iteration #{i}!" }

# yield at work
class Integer
  def my_times
    c = 0
    puts "c = 0"
    puts "until c == #{self}..."
    until c == self
      yield c
      c += 1
    end

    self
  end
end

puts
ret = 5.my_times { |i| puts "I'm on iteration #{i}!" }
puts ret

# c = 0
# until c == 5...
# I'm on iteration 0!
# I'm on iteration 1!
# I'm on iteration 2!
# I'm on iteration 3!
# I'm on iteration 4!
# 5
