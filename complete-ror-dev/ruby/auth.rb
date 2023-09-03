users = [
  { username: "john", password: "pwd1" },
  { username: "jack", password: "pwd2" },
  { username: "arya", password: "pwd3" },
  { username: "show", password: "pwd4" },
  { username: "heisenberg", password: "pwd5" },
]

def auth_user(username, password, list_of_users)
  
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

  users.each do |user|
    if user[:username] == username && user[:password] == password
      puts user
      break
    else
      puts "Credentials were not correct"
    end
  end

  puts "Press n to quit or any other kay to continue: "
  inp = gets.chomp.downcase
  break if inp == 'n'


  attempts += 1
end