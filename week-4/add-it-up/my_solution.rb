# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Ovi Calvo].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

=begin
define a method that takes an array

we're going to iterate through the array and add each number together

output the total

=end

# 1. total initial solution

def total(arr)
	  output = 0
	  arr.each do |x|
	    output += x
	  end
	  output
end



# 3. total refactored solution


#we were very happy with our initial solution and thought this looked the cleanest
def total(arr)
	  output = 0
	  arr.each do |x|
	    output += x
	  end
	  output
end



# 4. sentence_maker pseudocode
=begin
define a method that takes an array

we're going to iterate through array and join the strings together to form a sentance

return our string capitalized

=end
# 5. sentence_maker initial solution
def sentence_maker(arr)
  output = ""
  arr.each do |word|
    output += (word.to_s + " ")
  end
  output.capitalize.strip + "."  
end


# 6. sentence_maker refactored solution
#we were very happy with our initial solution and thought this looked the cleanest

def sentence_maker(arr)
  output = ""
  arr.each do |word|
    output += (word.to_s + " ")
  end
  output.capitalize.strip + "."  
end
