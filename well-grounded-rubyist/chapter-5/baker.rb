class Cake
  
  def initialize(batter)
    @batter = batter
    @baked = true
  end
end

class Egg
  
end

class Flour
  
end

class Baker
  def bake_cake
    @batter = []
    pour_flour
    add_egg
    stir_batter
    return Cake.new(@batter)
  end
  
  private

  def pour_flour
    @batter.push(Flour.new)
  end

  def add_egg
    @batter.push(Egg.new)
  end
  
  def stir_batter
  end
end

b = Baker.new
# b.add_egg : private method `add_egg' called for

class Dog
  attr_reader :age, :dog_years

  def dog_years=(years)
    @dog_years = years
  end

  def age=(years)
    @age = years
    self.dog_years = years * 7
  end
  
  private :dog_years=
end

rover = Dog.new
rover.age = 10
puts "Rover is #{rover.dog_years} in dog years."

# Rover is 70 in dog years.

# Example of a protected method and its use
class C
  def initialize(n)
    @n = n
  end

  def n
    @n
  end

  def compare(c)
    if c.n > n
      puts "The other object's n is bigger."
    else
      puts "The other object's n is the same or smaller."
    end
  end

  protected :n
end

c1 = C.new(100)
c2 = C.new(101)
c1.compare(c2)   # The other object's n is bigger.