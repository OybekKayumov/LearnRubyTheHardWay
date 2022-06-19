# File.open("ex16_sample.txt", "r") do |file|
#     #puts file.read()
#     for line in file.readlines do
#       puts line  
#     end
# end
#################

# file = File.open("ex16_sample.txt", "r")

# puts file.read

# file.close 
##################


# File.open("ex16_sample.txt", "a") do |file|
#     file.write("cool")
# end
#################

# File.open("ex16_sample.txt", "w") do |file|
#     file.write("cool")
# end
#################

# File.open("ex16_sample2.txt", "w") do |file|
#     file.write("cool")
# end
#################

filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

puts "opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close()