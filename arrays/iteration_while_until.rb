# Iteration over Array with while or until Loops
animals = ["lion", 'zebra', 'baboon', 'cheetah']

i = 0 
while i < animals.length # 4
  puts i
  puts animals[i]
  i +=1
end

# 0
# lion
# 1
# zebra
# 2
# baboon
# 3
# cheetah

puts
#todo until
i = 0
until i == animals.length  # >=
  puts i
  puts animals[i]
  i +=1
end

# brakes when i == animals.length