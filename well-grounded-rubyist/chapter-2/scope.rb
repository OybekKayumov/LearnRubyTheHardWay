# Scope - local scope
def say_goodbye
  x = "Goodbye"
  puts x
end

def start_here
  x = "Hello"
  puts x
  say_goodbye

  puts "Let's check whether x remained the same: "
  puts x
end

start_here
# Hello
# Goodbye
# Let's check whether x remained the same:
# Hello

# 2
puts "-------------------"
str = "Hello !!!"
abc = str
str.replace("Goodbye!!!")

def say_goodbye_2
  str = "Hello !!!"
  abc = str
  str.replace("Goodbye !!!")
  puts str
  puts abc
end

say_goodbye_2
# -------------------
# Goodbye !!!
# Goodbye !!!

# Ответ заключается в том, что переменные в Ruby (за некоторыми исключениями, особенно переменными, привязанными к целым числам) не содержат значений объектов. str не содержит "Hello". Скорее, str содержит ссылку на строковый объект. Это строковый объект, который содержит буквы, составляющие "Hello".

# В присваивании с именем переменной слева и объектом справа переменная получает ссылку на объект. При присвоении одной переменной другой ( abc = str) переменная слева получает копию ссылки, хранящейся в переменной справа, в результате чего обе переменные теперь содержат ссылки на один и тот же объект.

# !
# x = 1
# x++     # No such operator
# The reason is that due to the immediate presence of 1 in x, x++ would be like 1++, which means you’d be changing the number 1 to the number 2—and that makes no sense.

puts "----------------"
# References in variable assignment and reassignment
str = "Hi"
abc = str
str = "Goodbbye !"
puts str
puts abc

# Goodbbye !
# Hi

# References and method arguments
def change_string(str)
  str.replace("New string content!")
end

s = "Original string content!"
change_string(s)

puts s
# New string content!

# Duping and freezing objects
# If you want to protect objects from being changed inside methods to which you send them, you can use the dup method, which duplicates an object:
s = "Original string content!"
change_string(s.dup)
puts s
# Original string content!

# freeze an object, which prevents it from undergoing further change
s = "Original string content!!!"
s.freeze
change_string(s)

# there’s also a method called clone. It’s a lot like dup. The difference is that if you clone a frozen object, the clone is also frozen—whereas if you dup a frozen object, the duplicate isn’t frozen.


numbers = ["one", "two", "three"]
# ["one", "two", "three"]
numbers.freeze
# ["one", "two", "three"]
numbers[2] = "four"
# RuntimeError: can't modify frozen array

numbers[2].replace("four")
# "four"
numbers
# ["one", "two", "four"]

