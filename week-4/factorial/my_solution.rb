# Factorial

# I worked on this challenge [by myself, with: ].


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
      