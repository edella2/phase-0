# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# class Die
#   def initialize(labels)
#     @sides = labels.length
#     @labels = labels
#     if @sides < 1
#       raise ArgumentError.new("Enter an array of labels larger than 1")
#     end 

#   end

#   def sides
#     @sides
#   end

#   def roll
#     @labels[rand(@sides)]
#   end
# end




# Refactored Solution

class Die
  def initialize(labels)
    @sides = labels.length
    @labels = labels
    raise ArgumentError.new("Enter an array of labels larger than 1") if @sides < 1  
  end

  def sides
    @sides
  end

  def roll
    @labels[rand(@sides)]
  end
end







=begin
# Reflection

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

The difference between the two is how it is initialized.  The first die class was initialized by determing the number of sides with an integer.  The new die class was initialized by determining an array.

What does this exercise teach you about making code that is easily changeable or modifiable? 

It shows how important it is to keep things simple to make changes really fluid and easy.

What new methods did you learn when working on this challenge, if any?

There were no new methods I used on this challenge.  Just different implementation.

What concepts about classes were you able to solidify in this challenge?

I was able to solidify initializing classes better with this assignment.

=end