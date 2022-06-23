# Multiply an Array with Asterisk Symbol
puts 4 * 3
puts "Ruby " * 3
# Ruby Ruby Ruby

p [1, 2, 3] * 5
# [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]

p ['A', 'B', 'C'] * 4
# ["A", "B", "C", "A", "B", "C", "A", "B", "C", "A", "B", "C"]

puts
def custom_multiply(arr, num)
  res = []
  # num.times do
  #   arr.each do |elem|
  #     res << elem
  #   end
  # end
  # or
  num.times { arr.each { |elem|  res << elem } }
  res
end

p custom_multiply([1, 2, 3], 3)
# [1, 2, 3, 1, 2, 3, 1, 2, 3]

