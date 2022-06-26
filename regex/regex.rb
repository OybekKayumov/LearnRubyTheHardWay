# The .start_with? and .end_with? Methods
phrase = "The Ruby Programming Language is amazing!"
substr = "The"

puts phrase.start_with?('The')    # true
puts phrase.start_with?('The ')    # true

puts phrase.start_with?('Ruby')    # false, not in the beginning
puts phrase.start_with?('the')    # false

puts
puts phrase.downcase.start_with?('the')    # true

puts phrase.end_with?('zing!')    # true

puts phrase.end_with?('zing')    # false

puts
phrase = "The Ruby Programming Language is amazing!"
substr = "The"  # true
substr = "the"  # false

def custom_start_with(string, substring)
  # 2
  # string[0, substring.length] == substring ? true : false

  # 3
  string[0, substring.length] == substring
  
  # 1
  # if string[0, substring.length] == substring
  #   true
  # else 
  #   false
  # end
end

puts custom_start_with(phrase, substr)

puts
phrase = "The Ruby Programming Language is amazing!"
substr = "zing!"

def custom_end_with(string, substring)
  string[-substring.length..-1] == substring
end

puts custom_end_with(phrase, substr)
# true
