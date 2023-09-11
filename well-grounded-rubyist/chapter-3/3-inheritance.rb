class Publication
  attr_accessor :publisher
end

class Magazine < Publication
  attr_accessor :editor
end

# magazine objects have editor and editor= methods:
mag = Magazine.new
mag.publisher = "David A. Black"
mag.editor = "Joe Leo"

puts "Mag is published by #{mag.publisher} and edited by #{mag.editor}"
# Mag is published by David A. Black and edited by Joe Leo

class Exine < Magazine
  
end

class Person
  def species
    "Homo sapiens"
  end
end

class Rubist < Person
  
end

david = Rubist.new
puts david.species
# Homo sapiens
