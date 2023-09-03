simple_hash = {'a' => 1, 'b' => 2, 'c' => 3}
# key-value pair

my_details = {'name' => 'john', 'favcolor' => 'red'}
p my_details['favcolor']    # red

p simple_hash['b']    # 2

hash_other = {a: 1, b: 2, c: 3}
p hash_other
# {:a=>1, :b=>2, :c=>3}
hash_other[:a]    # 1

p hash_other.keys
p hash_other.values
# [:a, :b, :c]
# [1, 2, 3]

puts
hash_other.each do |key, value|
  puts "key class #{key.class} and value class #{value.class}"
end

# key class Symbol and value class Integer
# key class Symbol and value class Integer
# key class Symbol and value class Integer

my_details[:e] = 'bob'
my_details[:c] = 'Ruby'
puts
p my_details
# {"name"=>"john", "favcolor"=>"red", :e=>"bob", :c=>"Ruby"}

puts
p my_details.each { |k, v| my_details.delete(k) if v.is_a?(String)}
# {}
