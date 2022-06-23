# Union - Combine Arrays and Exclude Duplicates

# union combines multiple arrays into one and then removes any duplicates from that final array as well.
# union is a representation of all of the unique elements across all of the arrays.

p [1, 2, 3] | [3, 4, 5]
# [1, 2, 3, 4, 5]

p [1, 1, 2, 2, 3, 3] | [3, 4, 4, 5, 5]
# [1, 2, 3, 4, 5]

p [1, 2, 3].|([3, 4, 5])
# [1, 2, 3, 4, 5]

