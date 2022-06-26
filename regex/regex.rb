# The .start_with? and .end_with? Methods
phrase = "The Ruby Programming Language is amazing!"

puts phrase.start_with?('The')    # true
puts phrase.start_with?('The ')    # true

puts phrase.start_with?('Ruby')    # false, not in the beginning
puts phrase.start_with?('the')    # false

puts
puts phrase.downcase.start_with?('the')    # true

puts phrase.end_with?('zing!')    # true

puts phrase.end_with?('zing')    # false

puts
def method_name
  
end



