
obj = Object.new

def obj.talk
  puts "I am an pbject."
  puts "(Do you object?)"
end

puts obj.talk

# I am an pbject.
# (Do you object?)

# Celsius-to-Fahrenheit converter
def obj.c2f(c)
  c * 9.0 / 5 + 32
end

puts obj.c2f(100)   # 212.0
