# def sayHello 
#     puts "Hello World"

# end

# sayHello

double = "I am 6'2\" tall." # escape double-quote inside string
single = 'I am 6\'2" tall.' # escape single-quote inside string
puts double
puts single

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
