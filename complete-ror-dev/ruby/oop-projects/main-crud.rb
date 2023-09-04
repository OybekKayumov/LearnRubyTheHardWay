require_relative 'crud'

users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

hashed_users = Crud.create_secure_users(users)
puts hashed_users

# Module CRUD activated
# {:username=>"mashrur", :password=>"$2a$12$NN3dtMlc0mFFRe9wzlx6seDYSCotiwN5Bd.tEgkYdPaFZAiHCO7J."}
# {:username=>"jack", :password=>"$2a$12$K5mwLPPuOHqhsZZbQ6rw8.nsEN3Hmzea8USeluXE4bwusiH.QuNd6"}
# {:username=>"arya", :password=>"$2a$12$ynt9uYzcVBbt/rYSY1k4tO.nUw9ejbUxfgmAtU14hXxNGba9o3HoG"}
# {:username=>"jonshow", :password=>"$2a$12$1JfKsB9uBSJiKCeSRzaRnOeyGYV0ydUgAmKnh.GGSexdijadIANmW"}
# {:username=>"heisenberg", :password=>"$2a$12$qYBW8.R9OqOKrMvahpfIVOVAvfS5EIdCmqd5IreDOEsSqoJuTLoP6"}
