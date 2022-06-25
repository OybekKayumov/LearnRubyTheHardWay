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

#todo Predicate Methods on Time Objects
#* always ends with ? mark

b_day = Time.new(1974, 06, 01)
p b_day
# 1974-06-01 00:00:00 +0500

p b_day.monday?   #false
p b_day.tuesday?   #false
p b_day.wednesday?   #false
p b_day.thursday?   #false
p b_day.friday?   #false
p b_day.saturday?   #!true
p b_day.sunday?   #false

puts 

p b_day.dst?  # Daylight Savings Time. 
# false

#todo Add or Subtract Time by Seconds
start_of_year = Time.new(2022, 1, 1)

p start_of_year
# 2022-01-01 00:00:00 +0500

# add secunds
p start_of_year + 180 # add 3 mins
