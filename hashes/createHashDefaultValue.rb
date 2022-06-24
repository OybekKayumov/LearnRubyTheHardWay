# Create Hash with Default Value

fruit_prices = {banana: 1.05}

p fruit_prices[:orange]   #nil
p fruit_prices[:grape]   #nil

puts
# fruit_prices_1 = Hash.new(0)
fruit_prices_1 = Hash.new("Not found")
fruit_prices_1[:banana] = 1.05
fruit_prices_1[:orange] = 0.69
fruit_prices_1[:grape] = 10.99

p fruit_prices_1
# {:banana=>1.05, :orange=>0.69, :grape=>10.99}
p fruit_prices_1[:steak]  # "Not found"
p fruit_prices_1[:mashrooms]  # "Not found"

fruit_prices_1.default = "Not exist..."
p fruit_prices_1[:mashrooms]  # "Not exist..."
p fruit_prices_1[:steak]  # "Not exist..."
