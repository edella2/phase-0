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
def seperate_comma(num)
	num.to_s!.reverse!
	output = ""
	if num.length > 3
		i = 0
		count = 0
		while i < string.length
			if i % 3 == 0
				output << ","
				count += 1
				output << num[i]
			else
				output << num[i]
			end
			i++
		end
	else
		output << num
	end
	output.reverse!
end



# 2. Refactored Solution




# 3. Reflection