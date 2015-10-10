=begin

# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?

write a method that takes in a integer


# What is the output? (i.e. What should the code return?)

the code should return a string of numbers with comma's seperating the numbers (1,000 ; 99,999,999; 10)

# What are the steps needed to solve the problem?

1. Define the method and it takes in a integer
2. convert the integer to a string
3. check length of the string if it is more than 4 it needs a comma
4. reverse the string and start from the last number
WHILE
5. count up to 3 then push a comma into the string
6. change the count to then be +1 (we added a character)
END
7. reverse string
8. output string



=end
# 1. Initial Solution

def separate_comma(num)
  new_num = num.to_s.reverse
  output = []
  i = 0
  while i < new_num.length
    if i % 3 == 0 && i != 0
      output << ","
      output << new_num[i]
    else
      output << new_num[i]
    end
    i += 1
  end
  output.join("").reverse
end

# 2. Refactored Solution


def separate_comma(num)
  new_num = num.to_s.reverse
  output = []
  i = 0
  while i < new_num.length
    if i % 3 == 0 && i != 0
      output << "," + new_num[i]
    else
      output << new_num[i]
    end
    i += 1
  end
  output.join("").reverse
end

# 2. Refactored Solution (Trying new methods from ruby doc)

#specifically each_slice method

def separate_comma(num)
  new_num = num.to_s.reverse.split("")
  output = []
  #This can be written as one line, but I like using 'do-end' better.  I feel the concept of what is happenign is easier to understand this way and makes it more readable. 
  new_num.each_slice(3) do |word|  
    output << word.join("")    
  end
  output.join(",").reverse
end

# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?

My initial thought process was a bit flawed for breaking the problem down with pseudocode.  As I started testing, I realized I didn't need to have a seperate count function to add to each loop.  This was not necessary as I had initially defined my input and my output as seperate variables.  This count variable would have been necessary and more complicated if the same variables were used.

Was your pseudocode effective in helping you build a successful initial solution?

It was helpful for the initial set up of the problem for this one.  After initial testing I found a few errors I had made with my pseudocode(above I mentioned input and output defined as seperate).  I think I was able to more quickly identify my error with the pseudocode though.

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

For my initial refactoring I wanted to stay true to what I had written out for my initial solution.  I did not have to use any new methods, but was able to clean my code up more.  For my second attempt at refactoring I rewrote the method around the .each_slice(n) method I found on ruby docs.  The way I used it in my final refactoring can be written to one line, but I prefer the look of 'do-end' as it is easier to read and understand what each section of my code is doing more quickly.

How did you initially iterate through the data structure?

I initially created a while loop that would work through the string index.  If the index was on the third character it would push in the digit and a comma at the same time.

Do you feel your refactored solution is more readable than your initial solution? Why?

My final refactored solution with the .each_slice(3) is very readable.  You can see through the few lines that it takes a string and reverses it and creates an array.  We can see the output is going to be an array that we will push our slices into.  And on the final return line we see that each index of the array we created will be joined into a string with a comma seperating the words.


=end
