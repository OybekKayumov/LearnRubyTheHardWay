name = 'Oybek Kayumov'
age = 47 # not a lie
height = "175" #sm
weight = 103 # kg
eyes = "Brown"
teeth = "White"
hair = "Black"

puts "Let's talk about %s." % name
puts "He's %d santimeters tall." % height
puts "He's %d kg heavy." % weight
puts "Actually that's not too heavy." 
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "He's teeth are usually %s depending on coffee" % teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [
age, height, weight, age.to_i + height.to_i + weight.to_i]
