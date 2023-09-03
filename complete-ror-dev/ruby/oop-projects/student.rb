# Student -> class
# first name, last name, email  -> attributes

class Student
  # attr_accessor :first_name, :last_name, :email, :username

  # instance variables
  @first_name
  @last_name
  @email
  @username
  @password

  def first_name=(name)
    @first_name = name
  end
  
  # getter
  def first_name
    @first_name
  end

  # by default
  def to_s
    "First name: #{@first_name}"
  end
  

end

# create an instance of Student class
john = Student.new
# puts john
john.first_name = "John"
# john.first_name("John")
puts john
puts john.first_name
