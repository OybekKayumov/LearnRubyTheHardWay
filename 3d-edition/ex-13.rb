first, second, third = ARGV

puts "Your first variable is : #{first}"
puts "Your second variable is : #{second}"
puts "Your third variable is : #{third}"

# ruby .\3d-edition\ex-13.rb first 2nd 3rd
# Your first variable is : first
# Your second variable is : 2nd
# Your third variable is : 3rd

# В чем разница между ARGV и gets.chomp ?
# Разница заключается в том, где пользователь должен вводить данные. Если они вводят ваш скрипт в командную строку, вы используете ARGV . Если вы хотите, чтобы они вводили данные с помощью клавиатуры во время работы скрипта, используйте gets.chomp .
