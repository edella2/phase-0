# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#The error is occuring in errors.rb

# 2. What is the line number where the error occurs?
#It occurs on line 170
#
# 3. What is the type of error message?
#The type of error is a syntax error

# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end

# 5. Where is the error in the code?
#the interpreter has the error after "write your reflection below as a comment"

# 6. Why did the interpreter give you this error?
#There is a missing end and the method for cartman_hates is left open.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# The error occurs on line 40

# 2. What is the type of error message?
# NameError

# 3. What additional information does the interpreter provide about this type of error?
#undefined local variable or method 'south_park' for main:Object(NameError)

# 4. Where is the error in the code?
# the Error occurs on line 40 in main

# 5. Why did the interpreter give you this error?
# It gave us the error because it can not return south_park as it is a undefined variable or method.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# The error is on line 59
# 2. What is the type of error message?
# NoMethodError

# 3. What additional information does the interpreter provide about this type of error?
#undefined method 'cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
#on line 59 in main
# 5. Why did the interpreter give you this error?
#because a method cartman was called, but it has not been defined yet.  

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# the line number is 75 where it occurs
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#line 79 in main
# 5. Why did the interpreter give you this error?
# tried to pass argument ('I hate Kyle') through cartmans_phrase.  But cartmans_phrase does not take in any arguments.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# The Line number is 74.
# 2. What is the type of error message?
# The type of error is a ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# Line number 98 in <main>
# 5. Why did the interpreter give you this error?
# Cartman_says method requires an argument.  When the method is called on line 98 no arguments are given.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Line 115
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# it is on line 119 in <main>
# 5. Why did the interpreter give you this error?
# cartmans_lie takes 2 arguments, but is only given 1 when it is called.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# It is occuring on line 134
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced intoFixnum
# 4. Where is the error in the code?
# line 134 in <main>
# 5. Why did the interpreter give you this error?
# we can't multipy a string with an integer.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# on line 149
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# line 149 in <main>
# 5. Why did the interpreter give you this error?
# we tried to divide 20 by 0.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# line 165
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -  C:/Users/Eric/desktop/phase-0/phase-0/week-4/cartmans_essay.md 
# 4. Where is the error in the code?
# line 165 in main
# 5. Why did the interpreter give you this error?
# we tried to require a file named cartmans_essay.md but it was not found at the specified location (or at all).


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# Cartman_hates(thing) was the hardest to read.  The syntax error for the missing end had me looking at line 170 when the error was actually missing nearer to line 16.

# How did you figure out what the issue with the error was?

# when it mentioned it was missing a keyword for end I went to the top of the file and worked down looking to make sure each one had a keyword_end where needed.

# Were you able to determine why each error message happened based on the code? 

# Yes I was able to determine what the error was for most of the code

# When you encounter errors in your future code, what process will you follow to help you debug?

# Identifying the error type and looking to the line where the error occurs and where it is in.