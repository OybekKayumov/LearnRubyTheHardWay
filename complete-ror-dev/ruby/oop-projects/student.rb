# Student -> class
# first name, last name, email  -> attributes

class Student
  attr_accessor :first_name, :last_name, :email, :username, :password
  # attr_reader :password

  # instance variables
  # @first_name
  # @last_name
  # @email
  # @username
  # @password
  # @password = "pwd1"

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  # def first_name=(name)
  #   @first_name = name
  # end
  
  # # getter
  # def first_name
  #   @first_name
  # end

  # by default
  def to_s
    "Student: #{@first_name}, #{last_name}, #{username}, #{email}"
  end
  

end

# create an instance of Student class
# john = Student.new
# puts john
# john.first_name("John")
# puts john

# john.first_name = "John"
# john.last_name = "Doe"
# john.email = "john@email.com"
# john.username = "john"
# # john.password = "pwd1"

# puts john.first_name
# puts john.last_name
# puts john.email
# puts john.username
# puts john.password

john = Student.new("John", "Doe", "john", "john@email.com", "pwd1")
puts john
# Student: John, Doe, john, john@email.com
