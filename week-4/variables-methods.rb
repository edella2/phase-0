
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



######################
# How do you define a local variable?

# to define a local variable one would type something like:

# var1 = "My local variable"

# local variables should start with a lowercase letter or a underscore(_).


######################
# How do you define a method?

# to define a method one would type:

# def something
#   what method does
# end


# methods should be named simply, but specific.  A good general style for methods is to use snake case. (def example_method_name)

######################
# What is the difference between a local variable and a method?

# a local variable stores a value such as strings, integers or booleans.  A method returns a value and is usually composed of a set of expressions.  Methods will often be set up for a group


######################
# How do you run a ruby program from the command line?

# while inside the same folder
# ruby filename.rb


######################
# How do you run an RSpec file from the command line?

# while inside the same folder
# rspec filename.rb


######################
# What was confusing about this material? What made sense?

# There was nothing confusing about this material.  Displaying methods and variables was straightforward!

