# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# initial solution without using ruby built in methods
#Your Solution Below
# def shortest_string(list_of_words)
#   if list_of_words.length == 0
#   	return nil
#   end
#   output = list_of_words[0]

#   list_of_words.each do |word|
#   	if word.length < output.length
#   		output = word
#   	end
#   end
#   output
# end


#solution using built in ruby method
def shortest_string(list_of_words)
	list_of_words.min do |word1, word2| 
		word1.length <=> word2.length
	end
end