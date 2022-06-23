# The .flatten Method on an Array
# flattened method on an array removes all interior nested arrays within the main array.
# It simply extracts their elements and puts them all in sequence and gives you back a single one dimensional array.

registrations = [
  ['Bob', 'Dan', 'Jimm'],
  ['Rick', 'Susan', 'Molly'],
  ['Tom', 'Sean', 'George']
]

a, b, c = registrations
p a
p b
p c 
# ["Bob", "Dan", "Jimm"]
# ["Rick", "Susan", "Molly"]
# ["Tom", "Sean", "George"]

p registrations.flatten
# ["Bob", "Dan", "Jimm", "Rick", "Susan", "Molly", "Tom", "Sean", "George"]

puts
p registrations
# [["Bob", "Dan", "Jimm"], ["Rick", "Susan", "Molly"], ["Tom", "Sean", "George"]]

p registrations.flatten!
# ["Bob", "Dan", "Jimm", "Rick", "Susan", "Molly", "Tom", "Sean", "George"]

p registrations
# ["Bob", "Dan", "Jimm", "Rick", "Susan", "Molly", "Tom", "Sean", "George"]

# There is a complimentary bang method after the flattened method
# and will overwrite.
