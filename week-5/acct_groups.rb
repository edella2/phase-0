=begin
	
Creat a method that takes in an array of names
create a new hash for output
create a variable that will add to our accountability groups ("acct #{idx}"")
WHILE
slice the array into groups of four and put them into a hash.
count index up one for hash keys
END
return output

	
=end



#initial solution

def acct_groups(array)
	output = Hash.new(0)
	idx = 1
	if array.length % 4 == 0
		array.each_slice(4) do |words|
			output["Accountability Group #{idx}"] = words
			idx += 1
		end
	end
	return output
end


#refactored solution (randomize)

def acct_groups(array)
	output = Hash.new(0)
	idx = 1
	array.shuffle.each_slice(4) do |words|
		output["Accountability Group #{idx}"] = words
		idx += 1
	end
	return output
end

 copperheads = [
"Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair",
"Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo",
"Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un CHoi",
"Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek",
"John Paul Chaufan Field", "Eric Freeburg", "Jeffery George",
"Jamar Gibss", "Paul Gaston Gouron", "Gabrielle Gustilo",
"Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez",
"Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim",
"James Kirkpatrick", "Christopher Lee", "Isaac Lee",
"Joseph Marion", "Kevin Mark", "Bernadette Masciocchi",
"Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill",
"Jeremy Powell", "Jessie Richardson", "David Roberts",
"Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith",
"Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe",
"Daniel Woznicki", "Jay Yee", "Nicole Yee", "Burno Zatta" ]


p acct_groups(copperheads)


=begin
What was the most interesting and most difficult part of this challenge?

Something I'm struggling with still is adding functionality to make sure all groups have 3 members minimum but no more than 5.  To do this my initial group sizes are all 4, I wanted to add a modulus if-else statement for groups that were not divisible by 4 and increment through a loop for those last names and insert them into different keys (or accountability groups).  Each time I tried this the new names would just replace the groups entirely and remove the old members.  I included my test code below:


def acct_groups(array)
  output = Hash.new(0)
  idx = 1
  if array.length % 4 == 0
    array.each_slice(4) do |words|
      output["Accountability Group #{idx}"] = words
      idx += 1
    end
  else 
    array.each_slice(4) do |words|     
      if words.length % 4 != 0
        idx2 = words.length % 4
        words.each do |words2|         
          output.store("Accountability Group #{idx - idx2}",words)
          idx2 -= 1
        end
      else
        output.store("Accountability Group #{idx}",words)
        idx += 1
      end
    end
  end
  return output
end

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes, greatly.  My initial solution is refactored as much as I think it can and should get.  I was able to write out the pseudocode for taking an array of names and putting them into a hash in alphabetical order.  In my refactored solution I decided to just randomize that array so each group would be random.

Was your approach for automating this task a good solution? What could have made it even better?

I created a hash for the output.  This makes it easy to create new acountability groups based on the size of the cohorts.  

What data structure did you decide to store the accountability groups in and why?

I decided to store the groups in hashes.  It made sense as you can identify which group has which members easily.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

My initial solution did not include shuffling the members of the array.  When I refactored it I added a way to create randomized groups versus alphabetical.

=end