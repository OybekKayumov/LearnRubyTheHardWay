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
p start_of_year - 120 # - 2 mins

puts
p start_of_year + ( 60 * 60 ) # add 1 hour

p start_of_year + ( 60 * 60 * 24  ) # add 1 day

p start_of_year + ( 60 * 60 * 24 * 45 ) # add 45 days

# 2022-02-15 00:00:00 +0500

puts 
def find_day_of_year_by_number(number)
  current_date = Time.new(2022, 1, 1)
  
  one_day = 60 * 60 * 24  # add 1 day

  until current_date.yday == number
    current_date += one_day
  end
  current_date  
end

p find_day_of_year_by_number(150)
# 2022-05-30 00:00:00 +0500
p find_day_of_year_by_number(365)
# 2022-12-31 00:00:00 +0500
