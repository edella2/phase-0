



# Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp

puts "Hello, how are you " + first + " " + middle + " " + last + "?"



# Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "what is your favorite number?"
fav_num = gets.chomp

puts "are you sure it's not " + (fav_num.to_i + 1).to_s + "?"