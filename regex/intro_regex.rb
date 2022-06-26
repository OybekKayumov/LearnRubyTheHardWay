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

p phrase =~ / / # 1st space -- 3

p phrase =~ /x/ # not found  -- nill

p phrase =~ /Ru/ # 4

p phrase =~ /ing/ # 17 -- 1st

puts
# todo The .scan Method 
# gives all of the matches that we're looking for
voicemail = "I can e reached at 555-123-4567 or regexman@mail.com"

p voicemail.scan(/e/) # find all 'e'
# ["e", "e", "e", "e", "e"]

p voicemail.scan(/e/).length # 5

p voicemail.scan(/re/) # ["re", "re"]
p voicemail.scan(/re/).length # 2
