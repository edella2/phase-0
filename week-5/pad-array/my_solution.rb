# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin
def pad(array, min_size, value = nil) #non-destructive
  if array.length >= min_size
    return array
  end
  
  i = 0
  new_array = array
  while (array.length + i) <= min_size
    new_array << value
    i += 1
  end
  return new_array
end
=end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil) #non-destructive  
	new_array = Array.new
	new_array += array
    new_array.fill(value, array.length...min_size)
end

# 4. Reflection

=begin
	

	
end
Were you successful in breaking the problem down into small steps?

We were successful in breaking down the problem into smaller more manageable steps

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

We were able to translate our pseudocode into our actual code.  I think it really made it easy to follow an outline and talk aloud what we were trying to accomplish in our code.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial solution was successful in passing the tests for the destructive method.  We had to look up more about object id's to find out why we were getting erros.

When you refactored, did you find any existing methods in Ruby to clean up your code?

When we refactored we read ruby docs and found the .fill method.  It fit perfectly with our code and we decided to use it.

How readable is your solution? Did you and your pair choose descriptive variable names?

We refactored our solution to just one line and it is very readable and clear.

What is the difference between destructive and non-destructive methods in your own words?

Destructive methods alter what is stored under an object ID.  A non-destructive method will create a new object ID and store the same information in the new object before altering it.  

=end