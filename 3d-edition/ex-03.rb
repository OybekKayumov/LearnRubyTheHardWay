puts "I will now count my chickens:"

puts "Hens #{25 + 30 / 6}"
puts "Roosters #{100 - 25 * 3 % 4}"

puts "Now I will count the eggs:"

puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

puts "Is it true that 3 + 2 < 5 - 7?"

puts 3 + 2 < 5 - 7

puts "What is 3 + 2? #{3 + 2}"
puts "What is 5 - 7? #{5 - 7}"


puts "Oh, that's why it's false."

puts "How about some more."

puts "Is it greater? #{5 > -2}"
puts "Is it greater or equal? #{5 >= -2}"
puts "Is it less or equal? #{5 <= -2}"

# I will now count my chickens:
# Hens 30
# Roosters 97
# Now I will count the eggs:
# 7
# Is it true that 3 + 2 < 5 - 7?
# false
# What is 3 + 2? 5
# What is 5 - 7? -2
# Oh, that's why it's false.
# How about some more.
# Is it greater? true
# Is it greater or equal? true
# Is it less or equal? false

# PEMDAS stands for Parentheses Exponents Multiplication Division Addition Subtraction. That's the order Ruby follows as well. The mistake people make with PEMDAS is to think this is a strict order, as in "Do P, then E, then M, then D, then A, then S." The actual order is you do the multiplication and division (M&D) in one step, from left to right, then you do the addition and subtraction in one step from left to right. So, you could rewrite PEMDAS as PE(M&D)(A&S).

puts "--- float ---"
# with float
puts "I will now count my chickens:"

puts "Hens #{25.0 + 30.0 / 6.0}"
puts "Roosters #{100.0 - 25.0 * 3.0 % 4}"

puts "Now I will count the eggs:"

puts 3.0 + 2.0 + 1.0 - 5.0 + 4.0 % 2 - 1.0 / 4.0 + 6.0
# 6.75

puts "Is it true that 3 + 2 < 5 - 7?"

puts 3.0 + 2.0 < 5.0 - 7.0

puts "What is 3 + 2? #{3.0 + 2.0}"
puts "What is 5 - 7? #{5.0 - 7.0}"


puts "Oh, that's why it's false."

puts "How about some more."

puts "Is it greater? #{5.0 > -2.0}"
puts "Is it greater or equal? #{5.0 >= -2.0}"
puts "Is it less or equal? #{5.0 <= -2.0}"
