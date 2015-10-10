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


=begin
What is an ArgumentError and why would you use one?

An ArgumentError should be raised when arguments input into methods or classes will return something that is not possible.  Having a Die with -10 or 0 sides is not possible.  An argument error alerts the user, that the argument they input will not work.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

The newest method I learned was 'raise'.  I have never tried raising errors before and it was a little confusing trying to implement it for this problems solution.  I tried writing "raise "ArgumentError"" initially.  The correct way is to not include it as a string.

What is a Ruby class?

A class is like a blueprint.  String, arrays, hashes are all classes.  They all have their own innate methods.

Why would you use a Ruby class?

You would use a ruby class to create new methods.  Something like creating a class for dogs and methods for them barking is an example of this.  You could initialze a class that takes in a dogs age and a method that makes them bark each time for their age anytime it is called.

(something like)
baxter = Dog.new(5)
baxter.bark

What is the difference between a local variable and an instance variable?

local variables are scoped to just the method they are called in.  A instance variable is scoped to the class.

local_variable = "I am a local variable, I am tied to the method in which I exist"

@instance_variable = "I am a instance variable, I am tied to the class or my specific object"

Where can an instance variable be used?

An instance variable can be used inside of the class.  Or anytime it is associated with the object

=end