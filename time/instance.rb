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

puts 
#todo The Comparable Methods on a Time Object
birthday = Time.new(2000, 07, 07)
summer = Time.new(2000, 06, 21)
indep_day = Time.new(2000, 7, 4)
winter = Time.new(2000, 12, 21)

puts birthday < summer  #false
puts indep_day < winter # true
puts indep_day > winter # false

puts
p birthday == Time.new(2000, 07, 07) # true
p winter != Time.new(2000, 12, 21)  # false

puts indep_day.between?(birthday, winter)   #false
puts indep_day.between?(summer, winter)   #true

puts
# todo Convert Time Object to Other Objects
someday = Time.new(2000, 02, 15)
p someday.yday
p someday.wday
p someday.mday

puts 
p someday.to_s
# "2000-02-15 00:00:00 +0500"
p someday.to_s.class  # String

p someday.ctime.class  # String
p someday.ctime 
# "Tue Feb 15 00:00:00 2000"

p someday.to_a.class  # Array

p someday.to_a
# [0, 0, 0, 15, 2, 2000, 2, 46, false, "DST"]
# seconds, minutes, hours, day, month, year, day of the week, day from new year,
# false - in between Daylight Saving Time 

puts
# todo Convert Time Object to Formatted String
today = Time.now
p today
p today.to_s

puts
p today.strftime("%B %d, %Y")
# "June 26, 2022"

p today.strftime("%Z %X %p %Y %B %d")
# "DST 07:14:59 AM 2022 June 26"

# Formatting options
# %a - The abbreviated weekday name (“Sun”)
# %b - The abbreviated month name (“Jan”)
# %B - The full month name (“January”)
# %c - The preferred local date and time representation
# %d - Day of the month (01..31)
# %j - Day of the year (001..366)
# %m - Month of the year (01..12)

# %p - Meridian indicator (“AM” or “PM”)

# %w - Day of the week (Sunday is 0, 0..6)
# %x - Preferred representation for the date alone, no time
# %X - Preferred representation for the time alone, no date
# %y - Year without a century (00..99)

# %Y - Year with century
# %Z - Time zone name %% - Literal “%’’ character t = Time.now t.strftime(“Printed on %m/%d/%Y”) #=> “Printed on 04/09/2003” t.strftime(“at %I:%M%p”) #=> “at 08:56AM”

# todo The .parse and .strptime Methods
require 'time'    #! undefined method `parse' if commented

puts Time.parse("2022-03-01")
# 2022-03-01 00:00:00 +0500
