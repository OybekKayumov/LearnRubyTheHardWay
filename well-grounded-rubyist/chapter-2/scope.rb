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
