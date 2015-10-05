# Simple Substrings

# I worked on this challenge [by myself, with: ].


# Your Solution Belowdescribe 'welcome' do
def welcome(str)

	arr = str.split(" ")

	arr.each do |word|
		if word.downcase == "ca"
			return "Welcome to California"
		end
	end
	return "You should move to California"
end

