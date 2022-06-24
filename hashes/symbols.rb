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