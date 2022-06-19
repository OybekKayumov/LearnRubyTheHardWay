arr = Array[4,6,8,10,12, "Hello", 5.67]
puts arr
print arr
puts

countries = {
    "RU" => "Russia",
    2 => 2.02,
    "UZ" => "Uzbekistan",
    :EU => "Europe"

}

puts countries
puts countries["RU"]
puts countries["UZ"]
puts countries[2]
puts countries[:EU]


# Here's some new strange stuff, remember type it exactly.

days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug\nSep\nOkt"

puts "Here are the days: ", days
puts "Here are the months: ", months

puts <<PARAGRAPH
There's something going on here.
With the PARAGRAPH thing
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
PARAGRAPH
