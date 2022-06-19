require 'pry'

def simple_cubing_tool(number)
  num_cubed= number * number * number

  # binding.pry

  puts " The answer is #{num_cubed}"  
end

simple_cubing_tool(4)
