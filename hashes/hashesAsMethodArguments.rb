# todo Hashes as Method Arguments
# 1
def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

puts calculate_total_1(24.99, 0.18, 0.07) # 31.2375

#! 4.690799999999999 wrong result
puts calculate_total_1(0.18, 0.07, 24.99) 

# 2 correct pass arguments

bill = {price: 24.99, tip: 0.18, tax: 0.07}
bill = {tip: 0.18, tax: 0.07, price: 24.99}

def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tip_amount + tax_amount  
end

puts calculate_total_2(bill) # 31.2375

puts
# 3 example
puts calculate_total_2(price: 24.99, tip: 0.18, tax: 0.07)      # 31.2375
puts calculate_total_2({ price: 24.99, tip: 0.18, tax: 0.07 })  # 31.2375
puts calculate_total_2 price: 24.99, tip: 0.18, tax: 0.07       # 31.2375
