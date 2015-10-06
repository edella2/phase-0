

#1 Create list
=begin
Method that creates a new list
List of key value pairs
-keys = item
-values = quantity
Output a list of items and quantities
=end


#2 Add item w/ quantity
=begin
Method that takes in a key and it's value
Adds the new key and value to the end of list
Output the new list
=end

#3 Remove an item
=begin
Method that takes in key to be deleted
Deletes the key and value
Output the new list
=end

#4 Update quantities for items in our list
=begin
A method that takes in a key and value
Replace old key and value with new key and value
Output the new list
=end

#5 Print the list
=begin
Method that takes no arguments
Goes through the list and prints each element
Outputs the list with formatting
=end

def create_list
  
  new_list = Hash.new(0)
  
end

def print_list(list)
  
  
  list.each do |k,v|
    p "#{k}:  #{v}"
  end
end

def remove_item(list, key)
  
  list.delete(key)
  
end

def add_item(list, key,val)
  
  list.store(key,val)  
  
end

def update_item(list, key,val)
  
  list.delete(key)
  list.store(key,val)
  
end

# driver code below here
list_1 = create_list
add_item(list_1, "Lemonade", 2)
add_item(list_1, "Tomatoes", 3)
add_item(list_1, "Onions", 1)
add_item(list_1, "Ice Cream", 4)
remove_item(list_1, "Lemonade")
update_item(list_1,"Ice Cream", 1)
print_list(list_1)



#Something we messed around with after refactoring our code. We wanted to create something that could take user input for a list instead of hard coding in what variables would and keys would change above.
def case_method

#  puts "Please create a name for your list"
#  list_name = gets.chomp
#  list_name = create_list
input = ""
while input != "exit"
  puts "choose an option: create list (create), add or update item (update), remove an item (remove), print the list (print), or exit (exit)"
  input = gets.chomp.downcase
  case input
    when "create"
      puts "Please create a name for your list"
      list_name = gets.chomp
      list_name = create_list
    when "update"
      puts "What item?"
      key = gets.chomp
      puts "What value?"
      val = gets.chomp
      update_item(list_name,key, val)
    when "remove"
      puts "What item?"
      key = gets.chomp
      remove_item(list_name, key)
    when "print"
      print_list(list_name)
    when "exit"
      break
    else
      puts "Please enter a valid input (create, update, remove, print)"
    end
  end
end

case_method

=begin 
What did you learn about pseudocode from working on this challenge?

I learned keeping pseudocode too simple might make you overlook some steps.  When we were looking to print our list we had initially written our print method as literally "Prints the list".  We hadn't considered we would need to iterate through our hash to print out each item in the list until we were writing it out.

What are the tradeoffs of using Arrays and Hashes for this challenge?

Hashes made storing values and quantities much easier for this challenge.  During our pseudocode my pair and I decided that using hashes would be the best way to approach this problem.

What does a method return?

The last line of code in a method or any expression inside of it with 'return' before it.

What kind of things can you pass into methods as arguments?

You can pass, pretty much anything as arguments into methods.  We used hashes, strings and integers in our challenge.

How can you pass information between methods?

Information stored globally can be passed between methods.  We determined while writing out pseudocode that we would need to define our list as a global item, so it could be called and altered through our other methods.

What concepts were solidified in this challenge, and what concepts are still confusing?

I think the local and global variable concepts were solidifed during this challenge. There was a concept our guide brought up about using 'Object.send(:method)' that is still confusing to me, but I will be reading up on more to see what we could have done differently in our code with it.

=end
