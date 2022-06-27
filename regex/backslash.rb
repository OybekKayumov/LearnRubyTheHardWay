# The Backslash
para = 'This is my essay. I deserve an A. I rank it a 5 out of 5.'

# look for loiteral dot '.'
p para.scan(/\./)

# [".", ".", "."]

p para.scan(/\d/)
["5", "5"]

# any non digit D
p para.scan(/\D/)
# ["T", "h", "i", "s", " ", "i", "s", " ", "m", "y", " ", "e", "s", "s", "a", "y", ".", " ", "I", " ", "d", "e", "s", "e", "r", "v", "e", " ", "a", "n", " ", "A", ".", " ", "I", " ", "r", "a", "n", "k", " ", "i", "t", " ", "a", " ", " ", "o", "u", "t", " ", "o", "f", " ", "."]

# any whitespace character
p para.scan(/\s/)
# [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "]
p para.scan(/\s/).length # 15
p para.scan(/ /).length # 15

puts
# any 1 or more occurences of a whitespace charcter
p para.scan(/\s+/)

# any valid character
p para.scan(/\S+/)
# ["This", "is", "my", "essay.", "I", "deserve", "an", "A.", "I", "rank", "it", "a", "5", "out", "of", "5."]
