rainbow = %w[red orange yellow green gray indogo violet]

# use cicle for
for color in rainbow
  puts color
end

# red
# orange
# yellow
# green
# gray
# indogo
# violet

puts
# use each
rainbow.each { |color| puts color }

# times
5.times {|t| puts t}

# 0
# 1
# 2
# 3
# 4

puts
# upto and downto
5.upto(10) {|t| puts t}

15.downto(10) {|t| puts t}

