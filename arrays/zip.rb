# The .zip Method on an Array

names = ['Bob', 'Tom', 'John']
registrations = [true, false, false]

p names.zip(registrations)
# [["Bob", true], ["Tom", false], ["John", false]]

puts
p [1, 2, 3].zip([true, false, true], ['A', 'B', 'C'])
# [[1, true, "A"], [2, false, "B"], [3, true, "C"]]

puts
def custom_zip(arr1, arr2)
  final = []
  arr1.each_with_index do |value, index|
    final << [value, arr2[index]]
  end
  final
end

p custom_zip(names, registrations)
# [["Bob", true], ["Tom", false], ["John", false]]

p custom_zip([1, 2, 3], ['A', 'B', 'C'])
# [[1, "A"], [2, "B"], [3, "C"]]
