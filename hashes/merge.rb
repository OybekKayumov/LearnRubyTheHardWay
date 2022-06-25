# todo The .merge Method to Combine Hashes
market = { garlic: '3 cloves', tomatoes: '5 batches', milk: '10 gallons '}
kitchen = { bread: '2 loaves', yogurt: '20 cans', milk: '100 gallons '}

#* MERGE method takes value from the hash that provided as the argument to the merge method

# p market.merge(kitchen)

# {:garlic=>"3 cloves", :tomatoes=>"5 batches", :milk=>"100 gallons ", :bread=>"2 loaves", :yogurt=>"20 cans"}

p kitchen.merge(market)
# {:bread=>"2 loaves", :yogurt=>"20 cans", :milk=>"10 gallons ", :garlic=>"3 cloves", :tomatoes=>"5 batches"}

p kitchen 
# {:bread=>"2 loaves", :yogurt=>"20 cans", :milk=>"100 gallons "}

# mutation merge!
# p kitchen.merge!(market)
puts "\n\n"
def custom_merge(hash1, hash2)
  new_hash = hash1.dup
  # hash2.each do |key, val|
  #   new_hash[key] = val    
  # end  
  #
  hash2.each { |key, val| new_hash[key] = val }   
    
  new_hash
end

p custom_merge(market, kitchen)
# {:garlic=>"3 cloves", :tomatoes=>"5 batches", :milk=>"100 gallons ", :bread=>"2 loaves", :yogurt=>"20 cans"}