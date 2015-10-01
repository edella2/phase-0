
# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# initial solution without using ruby built in methods
#Your Solution Below
# def longest_string(list_of_words)
#   if list_of_words.length == 0
#   	return nil
#   end
#   output = list_of_words[0]

#   list_of_words.each do |word|
#   	if word.length > output.length
#   		output = word
#   	end
#   end
#   output
# end

#solution using built in ruby method
def longest_string(list_of_words)
  # Your code goes here!
  list_of_words.max do |word1, word2|
  	word1.length <=> word2.length
  end
end