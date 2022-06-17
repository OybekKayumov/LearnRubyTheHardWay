require 'pry'

complicated_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

def puts_array(array)
  new_array = array.map do |a|
    binding.pry
  end
  puts new_array
end

puts_array(complicated_array)

