number = [1, 2, 3, "Hi", 5, 6, nil, 7, 8, [], 9]

number.each do |num|
  # if it not fixnum
  # if !num.is_a?(Fixnum)
  unless num.is_a?(Fixnum)
    next
  else
    puts "The square of #{num} is #{num ** 2}"    
  end
end

# The square of 1 is 1
# The square of 2 is 4
# The square of 3 is 9
# The square of 5 is 25
# The square of 6 is 36
# The square of 7 is 49
# The square of 8 is 64
# The square of 9 is 81