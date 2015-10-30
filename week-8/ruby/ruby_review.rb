# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin

a method that takes in a integer as an argument
for the integer defined determine the fibonacci number

IF num is 1
  return 1
END

create a variable output that is an array containing the number [1, 1]

for the integer defined determine the fibonacci number

LOOP until array length equals num
  push into output array index minus 2 + array index - 1

END

return array index at minus 1



=end
# Initial Solution
=begin
def is_fibonacci?(num)
  if fibonacci((num / 4) + 10).include? num
    return true
  else
    return false
  end



end

def fibonacci(num)
  return 1 if num == 1
  i = 2
  output = [1, 1]

  while i < num
    output << ( output[i - 2] + output[i - 1] )
    i += 1
  end
  output
end
=end
# Refactored Solution
=begin
def is_fibonacci?(num)
  i = 2
  output = [1, 1]

  while num > output[i - 1]
    output << ( output[i - 2] + output[i - 1] )
    puts output
    if output.include? num
      return true
    end
    i += 1
  end
  return false

end
=end
#re-refactored solution
def is_fibonacci?(num)
  i = 1
  output = [1, 1]

  while num >= output[i]
    output << ( output[i - 1] + output[i] )
    puts output
    if output.include? num
      return true
    end
    i += 1
  end
  return false

end



# driver code
# puts is_fibonacci(1)



# Reflection
=begin
What concepts did you review or learn in this challenge?

I actually approached the car class problem first.  I was able to set up a class with all the methods, but was unable to figure out what to do for the other final releases for the challenge.  I then decided to do the fibonacci number above and I approached the problem in a couple different ways.

What is still confusing to you about Ruby?

I find that when I can't immediately solve a problem my pseudocode becomes irrelavent almost.  For the fibonacci problem I needed to rewrite my solution in a completely different way as solving for large numbers while possible, would take a very very long time to run the code.

What are you going to study to get more prepared for Phase 1?

I need to work on coming back to my pseudocode and rework through it instead of just trying and testing different things until my code runs.  Pseudocode is something I've been trying to take seriously and while I think I'm getting better at it, this problem showed many areas I still need to work on.  Especially when my pseudocode is not correct (or effecient) the first time.

=end