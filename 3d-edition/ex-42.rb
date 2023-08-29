## animal is-a object look at the extra credit
class Animal
end

## ??
class Dog < Animal
  def initialize(name)
    ## ??
    @name = name
  end
end

## ??
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