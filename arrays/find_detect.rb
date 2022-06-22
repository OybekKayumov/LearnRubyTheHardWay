# The .find and .detect Methods on an Array

words = ['dictionary', 'refrigerator', 'platypus', 'microwave']

p words.select {|word| word.length > 10}
# ["refrigerator"]

p words.select {|word| word.length > 8}
["dictionary", "refrigerator", "microwave"]

p words.find {|word| word.length > 8}
"dictionary"

# same
p words.detect {|word| word.length > 8} 
"dictionary"

lottery = [4, 6, 8, 15, 16, 23, 42]
res = lottery.find do |number|
  number.odd?
end
p res # 15

puts "detect"
res1 = lottery.detect {|number| number.odd?}

p res1   # 15

puts
p lottery.reverse.detect {|number| number.odd?}
p lottery.reverse.find {|number| number.odd?}   # 23
