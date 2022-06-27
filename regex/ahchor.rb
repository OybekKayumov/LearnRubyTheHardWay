# RegEx Anchors

poem = "99 bottles of water of the wall, 99 bottles of water"

p poem.scan(/\d+/)
# ["99", "99"]

# \A search only at the start of the string for one or more digits in order
p poem.scan(/\A\d+/)
# ["99"]

p poem.scan(/\A\d/)
# ["9"]

puts
# \z the end of string
p poem.scan(/ter\z/)
# ["ter"] # wa-ter
