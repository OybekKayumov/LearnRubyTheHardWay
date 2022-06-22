# The .any? and .all? Methods on an Array
p [1, 3, 5, 7, 2].any? do |number|
  number.even?
end
# true

p [1, 3, 5, 7, 9].any? { |number| number.even? }
# false

puts
p [1, 3, 5, 7, 9].all? { |number| number.odd? }
# true

p [1, 3, 5, 7, 9, 10].all? { |number| number.odd? }
#false




