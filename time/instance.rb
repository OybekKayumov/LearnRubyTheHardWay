# Intro to the Time Object
puts Time.new

today = Time.new
p today.class # Time

puts
p Time.new(2020)
# 2020-01-01 00:00:00 +0500
puts
p Time.new(2020, 5, 18, 7, 30, 12)
# 2020-05-18 07:30:12 +0500

today = Time.now
p today

p today.month
p today.day
p today.year

p today.hour
p today.min
p today.sec

puts 
p today.yday  # day from new year
p today.wday  # weekday

# Predicate Methods on Time Objects