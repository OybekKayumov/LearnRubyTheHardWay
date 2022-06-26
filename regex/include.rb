# The .include? Method
phrase = "The Ruby Programming Language is amazing!"
search_for = "Language"
search_for = "the"

p phrase.include? "Ruby"  # true
p phrase.include? "Language"  # true
p phrase.include? "the"  # false
p phrase.include? "progr"  # false
p phrase.upcase.include? "PROGR"  # true

puts
def custom_include?(string, substring)
  length = substring.length
  string.chars.each_with_index do |char, index|
  #   if string[index, length] == substring
  #     return true
  #   end
  # end
  # return false
  
  return true if string[index, length] == substring
  end
  false
end

p custom_include?(phrase, search_for) # true "Language"
p custom_include?(phrase, search_for) # false "the"