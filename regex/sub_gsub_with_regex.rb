# The .sub and .gsub Methods with Regular Expressions
# sub only replaces the first occurrenced character
p "whimper".sub('m', 's')
# whisper

p "wordplay".sub('w', 'sw')
# "swordplay"

p "aspirin".sub('in', 'ing')
# "aspiring"

# mutate, pverwritten object  
p word = "aspirin"

puts
p word
# "aspirin"

word.sub!('in', 'ing')
p word
# "aspiring"

puts
# todo gsub replace all occurences
puts "an apple".gsub("a", '-')
# -n -pple 

puts "555 555 1234".gsub(" ", '')
# 5555551234

puts
puts "(555)-555 1234".gsub(" ", '').gsub("(",'').gsub(")", '').gsub("-", '')
# 5555551234

puts 
# same with regex
puts "(555)-555 1234".gsub(/[-\s\(\)]/, '')
# 5555551234
