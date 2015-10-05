# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!

  if a == 0 || b == 0 || c == 0
  	return false
  elsif (c ** 2) == (a ** 2 + b ** 2)
  	return true
  elsif (b ** 2) == (a ** 2 + c ** 2)
  	return true
  elsif (a ** 2) == (b ** 2 + c ** 2)
  	return true
  elsif a == b && a == c
  	return true
  else 
  	return false
  end
end