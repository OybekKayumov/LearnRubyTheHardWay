# The .include? Method
phrase = "The Ruby Programming Language is amazing!"
search_for = "Language!"

p phrase.include? "Ruby"  # true
p phrase.include? "Language"  # true
p phrase.include? "the"  # false
p phrase.include? "progr"  # false
p phrase.upcase.include? "PROGR"  # true

puts
def custom_include?(string, substring)
  
end
