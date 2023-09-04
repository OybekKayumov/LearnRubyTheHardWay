require 'bcrypt'

my_password = BCrypt::Password.create("my password")

class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  # by default
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
  end
  

end

# create an instance of Student class

john = Student.new("John", "Doe", "john", "john@email.com", "pwd1")
puts john
# First name: John, Last name: Doe, Username: john, email address: john@email.com
