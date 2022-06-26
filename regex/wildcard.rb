# The Wildcard Symbol, '.' any character

phrase = "The Ruby Programming Language version v3.1.2 is amazing and awe-inspiring."

puts phrase =~ /./ # not . in 40, returns 0 --> position of first element T

p phrase.scan(/./)
# ["T", "h", "e", " ", "R", "u", "b", "y", " ", "P", "r", "o", "g", "r", "a", "m", "m", "i", "n", "g", " ", "L", "a", "n", "g", "u", "a", "g", "e", " ", "i", "s", " ", "a", "m", "a", "z", "i", "n", "g", "."]

p phrase.scan(/.am/)
# ["ram", " am"] 'Prog-ram' . ' am-azing'

p phrase.scan(/.ing/)
# ["ming", "zing", "ring"]

p phrase.scan(/a.e/)
# ["age", "awe"]

p phrase.scan(/.ng/)
["ing", "ang", "ing", "ing"]

puts
p phrase.scan(/\d./)    # ["3.", "1.", "2 "]
p phrase.scan(/\d.\d./)    # ["3.1."]
p phrase.scan(/\d.\d.\d/)    # ["3.1.2"]




