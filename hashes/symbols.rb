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

#todo create person hash
