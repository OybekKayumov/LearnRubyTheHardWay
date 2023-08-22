def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
end


puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)


puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)


puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine two, variables and match:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

# We can just give the function numbers directly:
# You have 20 cheeses!
# You have 30 boxes of crackers!
# Man that's enough for a party!
# Get a blanket.
# OR, we can use variables from our script:
# You have 10 cheeses!
# You have 50 boxes of crackers!
# Man that's enough for a party!
# Get a blanket.
# We can even do math inside too:
# You have 30 cheeses!
# You have 11 boxes of crackers!
# Man that's enough for a party!
# Get a blanket.
# And we can combine two, variables and match:
# You have 110 cheeses!
# You have 1050 boxes of crackers!
# Man that's enough for a party!
# Get a blanket.
