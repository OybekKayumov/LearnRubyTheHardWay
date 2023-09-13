module M
  def report
    puts "'report' method in module M" 
  end
end

class C
  include M
end

class D < C
  
end

obj = D.new
obj.report
# 'report' method in module M

# Two same-named methods on a single search path
module InterestBearing
  def calculate_interest
    puts "Placeholder! We're in module InterestBearing"
  end
end

class BankAccount
  include InterestBearing

  def calculate_interest
    puts "Placeholder! We're in class BankAccount."
    puts "And we're overriding the calculate_interest method..."
    puts "which was defined in the InterestBearing module."
  end
end

acc = BankAccount.new
acc.calculate_interest

# Placeholder! We're in class BankAccount.
# And we're overriding the calculate_interest method...
# which was defined in the InterestBearing module.
