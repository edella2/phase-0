=begin
# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Jack Huang ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?

define a method that takes in an array as an argument

# What is the output? (i.e. What should the code return?)

our output should return the number or string that occurs the most frequently

# What are the steps needed to solve the problem?

1. define method that takes in an array
2. we can define a hash
3. iterate through the array to push the array values into the hash
4. set the array values as a key, and add 1 to each key
5. output the key with the highest number

=end
# 1. Initial Solution


def mode(arr)
  h1 = Hash.new(0)
  arr.each { |x| h1[x] += 1 }
  output = []
  h1.each {|k, v| output << k if v == h1.values.max}
  return output
end





# 3. Refactored Solution


# we checked through ruby docs as well and experimented with other methods we believed could help us refactor our code.  But it did not work when we tried it.
# our initial solution seems to be pretty clean. We compared our answers to those on stack overflow and found that to output as an array our code was as clean as we could get it.
def mode(arr)
  hash = arr.inject(Hash.new(0)) {|h, v| h[v] += 1; h}
  output = []
  hash.each {|k, v| output << k if v == hash.values.max}
  return output
end

# 4. Reflection

=begin
Which data structure did you and your pair decide to implement and why?

We decided to use a hash structure when going through the problem.  We believed that by using a hash we could create a value of count that would be stored with each item.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

We were very successful until we got to our output.  It took us some time to identify that we needed to push our key values into an array to meet the output required in rspec.   I think in the future we need to spend more time looking at what we need to be outputting and in what format we need to output our answers in.

What issues/successes did you run into when translating your pseudocode to code?

Our issues were the same above.  We needed to spend more time looking at how we were going to apply our output.  We were trying to output as a key instead of an array.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used each pretty much exclusively to solve the problem.  We did look on ruby docs after our initial solution and tried implementing things like .max_by, but could not get them to work properly for our problem.  We found using .each it was easier for us to store our answers into an array after.

=end