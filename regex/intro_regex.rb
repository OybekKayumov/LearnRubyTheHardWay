# Intro to Regular Expressions

phrase = "The Ruby Programming Language is amazing!"

puts //.class #Regexp

p phrase =~ /T/ #search for 1st capital T
# 0 is the index position of T

p phrase =~ /R/ #search for 1st capital R -- 4 index position
p phrase =~ /m/ #search for 1st m -- 15 index position

puts
p /m/ =~ phrase # same

p phrase =~ /!/ # ! -- position ! is 40 
p phrase =~ /./ # ! . means any characters at all -- 0 - first element Positoin iz 0 -- T
