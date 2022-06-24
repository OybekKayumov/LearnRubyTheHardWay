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


