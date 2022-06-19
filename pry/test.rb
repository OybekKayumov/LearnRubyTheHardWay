require 'pry'

def my_method
  inside_method = "We are now inside the method"
  puts inside_method
  pry_coming = "We are about to see how pry works!" 

  binding.pry

  frozen = "Pry froze the programm before it got to this point!"
  puts frozen
end

my_method