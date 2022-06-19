require 'pry'

complicated_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

def puts_array(array)
  new_array = array.map do |a|
    a.map do |b|
      b * 2      
    end
  end
  puts new_array
end

puts_array(complicated_array)

#* output
# 2
# 4
# 6
# 8
# 10
# 12
# 14
# 16
# 18

# used commands:
# exit, exit!
# binding.pry
