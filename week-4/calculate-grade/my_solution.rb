# Calculate a Grade

# I worked on this challenge [by myself, with: Eric Freeburg].


# Your Solution Below

def get_grade(n)
  if n >= 90 
    return "A"
  elsif n >= 80 
    return "B"
  elsif n >= 70
    return "C"
  elsif n >= 60
    return "D"
  else
    return "F"
  end
end
