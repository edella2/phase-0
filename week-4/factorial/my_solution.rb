# Factorial

# I worked on this challenge [by myself, with: Ovi Calvo].

=begin
define a method factorial that takes an integer

count down from the integer while it is greater than 0

multiply the integer with a initial sum set to 1

return output

=end


def factorial(integer)
  output = 1
  if integer == 0 || integer == 1
    return 1
  else
    while integer > 0
      output *= integer
      integer -= 1
    end
  end
  
  return output
end
      