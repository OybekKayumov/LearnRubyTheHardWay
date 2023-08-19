formatter = "%{first} %{second} %{third} % {fourth}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}

# 1 2 3 4
# one two three four
# true false true false
# %{first} %{second} %{third} % {fourth} %{first} %{second} %{third} % {fourth} %{first} %{second} %{third} % {fourth} %{first} %{second} %{third} % {fourth}
# I had this thing. That you could type up right. But it didn't sing. So I said goodnight. 
