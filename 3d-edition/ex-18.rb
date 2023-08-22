# this one is like yoour scripts with ARGV
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ok, that *args is actually pointless, we can just do this
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this just takes one argument
def print_one(arg1)
  puts "arg1: #{arg1}"
end

# this one takes no arguments
def print_none()
  puts "I got nothin'."
end

print_two("John", "Shaw")
print_two_again("John", "Shaw")
print_one("First")
print_none()

# arg1: John, arg2: Shaw
# arg1: John, arg2: Shaw
# arg1: First
# I got nothin'.
