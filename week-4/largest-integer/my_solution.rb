# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below


# initial solution without using ruby built in methods
# def largest_integer(list_of_nums)
#   if list_of_nums.length == 0
#     return nil
#   end
#   output = list_of_nums[0]
#   list_of_nums.each do |num|
#     if num > output
#       output = num
#     end
#   end
#   output
# end


#solution using built in ruby method
def largest_integer(list_of_nums)
  list_of_nums.max
end