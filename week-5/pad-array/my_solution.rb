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
def pad!(array, min_size, value = nil) #destructive
  array.fill(value, array.length...min_size)
end

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


def pad(array, min_size, value = nil) #non-destructive  
	new_array = Array.new
	new_array += array
    new_array.fill(value, array.length...min_size)

end



# 3. Refactored Solution



# 4. Reflection