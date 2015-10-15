# Worked with: Eric Dell'Aringa, Bruno Zatta

# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]


# number_array.each do |sub_array|
#   if sub_array.is_a? Fixnum
#     p sub_array + 5
#   else
#     sub_array.each {|sub_sub_array| p sub_sub_array + 5 if sub_sub_array.is_a? Fixnum}    
#   end
# end

# test = number_array.map do |element|
#   if element.kind_of?(Array)
#     element.map {|inner| inner + 5}
#   else
#     element + 5
#   end
# end

def fixnum_arrays(arr)
  arr.map! do |element|
    if element.is_a? Fixnum
      element + 5
    else
      fixnum_arrays(element)
    end  
  end
end



print fixnum_arrays(number_array).flatten





# Bonus:



startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]



=begin
def method that takes an array

iterate through the array and check to see if an item is a string or an array
if it is a string we will add "ly" to the string
else we will run method(element)


=end

def nested_arrays(arr)
  arr.each do |element|
    if element.is_a? String
      p element + "ly"
    else
      nested_arrays(element)
    end  
  end
end
  
  
nested_arrays(startup_names)

=begin

What are some general rules you can apply to nested arrays?

To take your time and to break down the nested arrays into easier segments to understand.  I would take time to count the brackets between the arrays to figure out which set I was on each time.

What are some ways you can iterate over nested arrays?

We actually found the best way to iterate over nested arrays was just creating a method and using recursion.  This way we would not need to specify what level of depth we could go into nested arrays, but could take arrays with only one level of nesting or even 20 levels of nesting and still get an output.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We used recursion on our answers, it seemed like the best way to iterate through an undefined number of nesting.

=end