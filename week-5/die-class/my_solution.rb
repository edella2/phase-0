=begin
# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Create a new class that initializes number of sides on the die
# Output: the output should display how many sides are on the dice and a random number that falls below the max sides on the dice (1-6 for 6 sides)
# Steps: 
initialize input of sides to the class variable sides
class method sides should return the number of sides on the dice
class method roll should return a random number between 1 and the sides of the dice

=end


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
    	raise ArgumentError
    end
    @sides = sides    
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end



# 3. Refactored Solution


class Die
  def initialize(sides)
    raise ArgumentError if sides < 1
    @sides = sides    
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end





# 4. Reflection

What is an ArgumentError and why would you use one?
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
What is a Ruby class?
Why would you use a Ruby class?
What is the difference between a local variable and an instance variable?
Where can an instance variable be used?