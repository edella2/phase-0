# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin
BEGIN: define a function that takes in a sentance as an argument.

END: return the same sentance with the words reversed.

STEPS:
split the sentance into an array by  each of the words

ITERATE through the array
  reverse each word in the array
END

join the array and include a space and return it.

=end

# Initial Solution
def reverse_words(sentance)
	words = sentance.split(" ")
	words.each do |word| 
		word.reverse! 
	end
	words.join(" ")
end


# Refactored Solution

def reverse_words(sentance)
	words = sentance.split(" ")
	words.each { |word| word.reverse! }
	words.join(" ")
end




# Reflection
=begin

What concepts did you review in this challenge?

I had done this problem with JavaScript for this week as well.  I wanted to get more familiar with working on similar problems with different languages and practice switching between both.

What is still confusing to you about Ruby?

Not so much confusing with ruby for this challenge, but I am confused why you can't reverse a string in javascript.  You need to put it into an array and then split it and then reverse and then join it again.

What are you going to study to get more prepared for Phase 1?

Approaching problems with different languages is something I want to be more prepared for.  I realize I will not only use Ruby in the future, but must be ready to code in a variety of languages.

=end
