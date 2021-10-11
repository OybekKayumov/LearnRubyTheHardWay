my_name = 'Oybek Kayumov'
my_age = 47 # not a lie
my_height = "175" #sm
my_weight = 103 # kg
my_eyes = "Brown"
my_teeth = "White"
my_hair = "Black"

puts "Let's talk about %s." % my_name
puts "He's %d santimeters tall." % my_height
puts "He's %d kg heavy." % my_weight
puts "Actually that's not too heavy." 
puts "He's got %s eyes and %s hair." % [my_eyes, my_hair]
puts "He's teeth are usually %s depending on coffee" % my_teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [
my_age, my_height, my_weight, my_age.to_i + my_height.to_i + my_weight.to_i]
