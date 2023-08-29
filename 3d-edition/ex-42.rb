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
    ## cat has-a name
    @name = name
  end
end

## Person is-a Object
class Person
  def initialize(name)
    ## person has-a name
    @name = name

    ## Person has-a pet some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a Person
class Employee < Person
  def initialize(name, salary)
    ## ?? hmm what is this strange magic?
    ## argument "name" is forwarded to Person's initialize method
    super(name)
    ## Employee has-a salary
    @salary = salary
  end
end

## Fish is-a object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## sam is-a Cat
sam = Cat.new("Sam")

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet sam
mary.pet = sam

## frank is-a Employee
frank = Employee.new("Frank", 120000)

## frank has-a pet rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is_a Halibut
harry = Halibut.new()
