# Exclude Characters

sales = "I bought 9 apples, 25 bananas, and 4 oranges at the store."

# ^ - exclude those characters
# p sales.scan(/[^]/)

puts
# ignire all vowels
p sales.scan(/[^aeiou]/)
# ["I", " ", "b", "g", "h", "t", " ", "9", " ", "p", "p", "l", "s", ",", " ", "2", "5", " ", "b", "n", "n", "s", ",", " ", "n", "d", " ", "4", " ", "r", "n", "g", "s", " ", "t", " ", "t", "h", " ", "s", "t", "r", "."]

puts
p sales.scan(/[^AEIOUaeiou]/)

# remove spaces
p sales.scan(/[^AEIOUaeiou\s]/)
# ["b", "g", "h", "t", "9", "p", "p", "l", "s", ",", "2", "5", "b", "n", "n", "s", ",", "n", "d", "4", "r", "n", "g", "s", "t", "t", "h", "s", "t", "r", "."]

puts
# remove commas ','
p sales.scan(/[^AEIOUaeiou,\s]/)
# ["b", "g", "h", "t", "9", "p", "p", "l", "s", "2", "5", "b", "n", "n", "s", "n", "d", "4", "r", "n", "g", "s", "t", "t", "h", "s", "t", "r", "."]

puts
# remove digits
p sales.scan(/[^AEIOUaeiou,\s\d]/)
# ["b", "g", "h", "t", "p", "p", "l", "s", "b", "n", "n", "s", "n", "d", "r", "n", "g", "s", "t", "t", "h", "s", "t", "r", "."]

puts
# remove \.
p sales.scan(/[^AEIOUaeiou,\s\d\.]/)
# ["b", "g", "h", "t", "p", "p", "l", "s", "b", "n", "n", "s", "n", "d", "r", "n", "g", "s", "t", "t", "h", "s", "t", "r"]

puts
p sales.scan(/[^AEIOUaeiou,\s\d\.]/).length
p sales.scan(/[^AEIOUaeiou,\s\d\.]/).size   # 24
