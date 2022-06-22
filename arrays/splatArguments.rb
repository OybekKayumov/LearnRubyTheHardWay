# Splat Arguments

# def sum(a, b)
def sum(*numbers)
  sum = 0

  numbers.each { |num| sum += num }
  sum
end

p sum(1, 2)   # 3
p sum(1, 2, 4, 7, 9, -10, 54)   # 67
p sum(5)   # 5
p sum()   # 0

