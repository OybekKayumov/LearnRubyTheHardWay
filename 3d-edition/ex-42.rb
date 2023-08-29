## animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal
class Dog < Animal
  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal
  def initialize(name)
    ## ??
    @name = name
  end
end

## ??
class Person
  def initialize(name)
    ## ??
    @name = name

    ## Person has-a pet some kind
    @pet = nil
  end

  attr_accessor :pet
end

## ??
class Employee < Person
  def initialize(name, salary)
    ## ?? hmm what is this strange magic?
    super(name)
    ## ??
    @salary = salary
  end
end

## ??
class Fish
end

## ??
class Salmon < Fish
end

## ??
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## ?? 
sam = Cat.new("Sam")

## ??
mary = Person.new("Mary")

## ??
mary.pet = sam

## ??
frank = Employee.new("Frank", 120000)

## ??
frank.pet = rover

## ??
flipper = Fish.new()

## ??
crouse = Salmon.new()

## ??
harry = Halibut.new()
