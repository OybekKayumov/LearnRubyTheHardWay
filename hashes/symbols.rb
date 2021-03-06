# Intro to Symbols and Symbols as Hash Keys
#* this is a symbol called name
:name

p :name # :name, not string
p "name" # "name", string
puts
p :name.class # Symbol
p "name".class # String

# symbol is like a more light version of string

p :name.methods.length  # 87
p "name".methods.length # 183

puts
#todo create person hash
person = {:name => "Tom", 
          :age => 25, 
          :handsome => true,
          :languages => ['Javascript', 'Ruby', 'C++']
        }
p person[:name]
p person[:handsome]
p person[:languages]
p person[:age]

puts
#! same, without rocket operator "=>" between
person_new = {name: "Tom", 
  age: 25, 
  handsome: true,
  languages: ['Javascript', 'Ruby', 'C++']
}

p person_new[:name]
p person_new[:age]
p person_new[:languages]
p person_new[:handsome]
# "Tom"
# 25
# ["Javascript", "Ruby", "C++"]
# true

puts
#todo Convert Symbols to Strings and Vice Versa
p :age.class # Symbol

p :age.to_s.class # String

p "age".to_sym.class # Symbol

p "School Bus".to_sym 
# :"School Bus"
# Symbol  
p "School_bus".to_sym 
# :School_bus

puts
#todo The .fetch Method on a Hash
menu = {burger: 3.99, taco: 5.96, chips: 0.5}

p menu[:burger]
p menu[:taco]
p menu[:salad]  #nil

puts
p menu.fetch(:taco)
p menu.fetch(:chips)

#* if key is not present in hash
# p menu.fetch(:salad)  # ! The .fetch Method on a Hash

p menu.fetch(:salad, "Not Found")  # * default value
p menu.fetch(:salad, nil)  # * default value is nil
p menu.fetch(:salad, 9.99)  # * default value is 9.99

#* it only shows us the second argument if it's not able to find the first one as a key in the hash.

puts
#todo Add a Key Value Pair to a Hash with Bracket Syntax or the .store Method
menu = {burger: 3.39, taco: 5.96, chips: 0.50}

p menu[:burger]
p menu[:sandwich]   # nil

p menu[:sandwich] = 8.99
p menu
# {:burger=>3.39, :taco=>5.96, :chips=>0.5, :sandwich=>8.99}

p menu[:taco] = 2.99
p menu
# {:burger=>3.39, :taco=>2.99, :chips=>0.5, :sandwich=>8.99}

# store
# menu.store(key, value)
menu.store(:sushi, 24.99)
p menu
# {:burger=>3.39, :taco=>2.99, :chips=>0.5, :sandwich=>8.99, :sushi=>24.99}
menu.store(:steak, 34.99)
p menu
p menu[:steak]  # 34.99

puts
# todo The .length and .empty? Methods on a Hash

shoppin_list = {banans: 5, oranges: 10, carrots: 3, crackers: 15}
vegan_shoppin_list = {}

p shoppin_list.length
p shoppin_list.empty? #false
p vegan_shoppin_list.empty? #true

puts
# todo The .each Method on a Hash

capitals = {alabama: "Montgomery", alaska: 'Juneau', arizona: "Phoenix", arkansas: "Little Rock"}

capitals.each do |state, capital|
  puts "Quering hash..."
  puts "The capital of #{state} is #{capital}"  
end

# Quering hash...
# The capital of alabama is Montgomery
# Quering hash...
# The capital of alaska is Juneau
# Quering hash...
# The capital of arizona is Phoenix
# Quering hash...
# The capital of arkansas is Little Rock

puts
#todo each_pair
capitals.each_pair do |state, capital|
  puts "Quering hash..."
  puts "The capital of #{state} is #{capital}"  
end

puts
capitals.each do |guess|
  puts "Quering hash..."
  puts guess
end

# Quering hash...
# alabama
# Montgomery
# Quering hash...
# alaska
# Juneau
# Quering hash...
# arizona
# Phoenix
# Quering hash...
# arkansas
# Little Rock

puts
puts
capitals.each do |guess|
  puts "Quering hash..."
  puts guess[0]
end
# Quering hash...
# alabama
# Quering hash...
# alaska
# Quering hash...
# arizona
# Quering hash...
# arkansas

puts
puts
capitals.each do |guess|
  puts "Quering hash..."
  puts guess[1]
end

# Quering hash...
# Montgomery
# Quering hash...
# Juneau
# Quering hash...
# Phoenix
# Quering hash...
# Little Rock

# exercise
hash = {a: 5, b: 2, c: 3, d: 5, e: 3, f: 3}
def value_count(hash, value)
  result = 0
  hash.each do |key, val|
    result += 1 if value == val
  end
  result
end

p value_count(hash, 2)
p value_count(hash, 5)
p value_count(hash, 3)
# 1
# 2
# 3

puts 
# todo The .each_key and .each_value Methods
salaries = {director: 1000, producer: 2000, ceo: 10000}
salaries.each_key do |position|
  puts "Employee record: ----"
  puts "#{position}"  
end
# Employee record: ----
# director
# Employee record: ----
# producer
# Employee record: ----
# ceo

puts
salaries.each_value { |salary| puts "The next employee earns #{salary}"}

puts
salaries = {director: 1000, producer: 2000, ceo: 10000, assistant: 1500, assistant2: 1000,}
puts
def get_keys_from_hash(hash)
  keys = []
  hash.each do |key, val|
    keys << key
  end
  keys  
end

p get_keys_from_hash(salaries)
# [:director, :producer, :ceo]

puts
def get_values_from_hash(hash)
  values = []
  hash.each do |key, val|
    values << val
  end
  values.uniq
end

p get_values_from_hash(salaries)
# [1000, 2000, 10000]

#todo get uniq value
# [:director, :producer, :ceo, :assistant, :assistant2]
# [1000, 2000, 10000, 1500]

puts
# todo Retrieve Keys or Values from Hash as an Array

shoppin_list = {banans: 5, oranges: 10, carrots: 3, crackers: 5}

p shoppin_list.keys
# [:banans, :oranges, :carrots, :crackers]

p shoppin_list.values.uniq
# [5, 10, 3]
