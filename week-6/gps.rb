# Your Names
# 1) Eric Dell'Aringa
# 2) Chris Savage

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, order_quantity)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#   serving_size = library.values_at(item_to_make)[0]
#   serving_size_mod = order_quantity % serving_size

#   case serving_size_mod
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)


#Pseudocode

=begin
define a method that takes an item to make and the number ingredients

create a hash, that stores the number of ingredients required to make an item
Use .include? to Raise an ArgumentError if key is is not include in library "We don't make that!"
check how many of the item we can make based on the number of ingredients we have and find out how many ingredients are left over
with leftover ingredients see what we can make and how many.
return a string stating "what we are able to make and how many"
and if we have left over return a string stating "what we can make and how many and what we can make with our remainder and how many"
=end

def serving_size_calc(item_to_make, num_ingredients)
  recipe = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("We don't make #{item_to_make}") if !recipe[item_to_make]   

  needed_ingredients = recipe[item_to_make]
  leftover_ingredients = num_ingredients % needed_ingredients  

  case leftover_ingredients
  when 0 
    return "We can make you #{num_ingredients/needed_ingredients} #{item_to_make}."
  when 6
    return "We can make you #{num_ingredients/needed_ingredients} #{item_to_make}, and you have enough left over to make 1 cake and 1 cookie."
  when 5
    return "We can make you #{num_ingredients/needed_ingredients} #{item_to_make}, and you have enough left over to make 1 cake."
  else
    return "We can make you #{num_ingredients/needed_ingredients} #{item_to_make}, and you have enough left over to make #{leftover_ingredients} cookie."
  end
  
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("pie", 13) #we added this to do a test for one of our other cases if we had 6 remaining ingredient parts.  We wanted to be able to make a cake and a cookie with the left overs.
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


=begin
#  Reflection

# What did you learn about making code readable by working on this challenge?

I learned how difficult it can be to determine what a program should do with unreadable code.  My partner and I probably spent most of the assignment just trying to determine what the program was intended to do.

# Did you learn any new methods? What did you learn about them?

I learned that when doing a boolean statement that a value that is nil, will work the same as false.  This was useful when we were refactoring our code trying to determine if the item we were asked to make existed or not in our recipe.

# What did you learn about accessing data in hashes? 

I learned that when we access a key that doesn't exist in a hash it returns nil.  Again this was useful for doing our ArgumentError to check to see if we could create the item.

# What concepts were solidified when working through this challenge?

Readability!  It was frustrating just trying to understand the initial code.  Our guide had us try working through the problem in quick sections where we would identify the most basic key things about each line (and not just the intentions of the code) and move on to the next section of the code.  This made figuring out that the first lines with the error count, iterating through the hash and the argument error all were part of the same set of code.  We were in the end able to rewrite that all out into just one line versus the initial 8-10 lines it was before.

Something my pair brought up near the end of our refactoring I also agree with.  It was important that while we were refactoring our code that we were not reducing it in a way that it made it hard for us or others to determine what was happening.  There are variables in our code that while not necessary, serve a good function because it makes reading through our code so much easier.

=end