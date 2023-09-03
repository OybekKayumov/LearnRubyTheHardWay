# users array where username and password are stored
users = [
  { username: "john", password: "pwd1" },
  { username: "jack", password: "pwd2" },
  { username: "arya", password: "pwd3" },
  { username: "show", password: "pwd4" },
  { username: "heisenberg", password: "pwd5" },
]

# authentication method to check and verify if username/password combination exists
def auth_user(username, password, list_of_users)
  list_of_users.each do |user|
    if user[:username] == username && user[:password] == password
      return user
    end
  end
  # return "Credentials were not correct"
  "Credentials were not correct"
end

puts "Welcome to the authenticator"
25.times { print "-"}
puts 
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 1

while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  authentication = auth_user(username, password, users)
  puts authentication

  puts "Press n to quit or any other kay to continue: "
  inp = gets.chomp.downcase

  break if inp == 'n'

  attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 4
