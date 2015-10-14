
#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
	attr_reader :name
	def initialize		
		@name = "Eric Dell'Aringa"		
	end

end


class Greetings

	def initialize
		@name = NameData.new
	end

	def hello
		puts "Hello #{@name.name}! How wonderful to see you today."
	end
end

greet = Greetings.new
greet.hello

=begin
# Reflection

RELEASE 1

What are these methods doing?

The methods are initializing an age, returning what the name is, changing the name, returning the occupation and returning the occupation.

How are they modifying or returning the value of instance variables?

They are modifyinng the and returning the instance variables with their own instance methods.


RELEASE 2

What changed between the last release and this release?

'attr_reader :age' was added.  

What was replaced?

So the what_is_age method is no longer necessary.

Is this code simpler than the last?

Yes much simpler, the what_is_age method would only return the age.  Including attr_reader: age will do the same thing when you type instance_of_profile.age.


RELEASE 3

What changed between the last release and this release?

'attr_writer: age' was added

What was replaced?

The method change_my_name=(new_name) was replaced by attr_writer: age.  

Is this code simpler than the last?

Yes it is much simpler. You can change the age of the profile by typing instance_of_profile.age = 28 (or any age)


RELEASE 6

What is a reader method?

It returns a value outside of the class, but does not change it

What is a writer method?

You can change the value of the variable outside of the class

What do the attr methods do for you?

Allow you to either return a value outside of a class with the attr_reader without changing the value itself.
Attr_writer allows you to change the valuew without returning the old value.

Should you always use an accessor to cover your bases? Why or Why not?

No you should not always use attr_accessor.  It is helpful when debugging code by not allowing variable to be changed from outside the class or to be read outside of a class.  It helps narrow down where a mistake in code could be.  It is also helpful because sometimes you do not want to have things outside of a class to have access to it's variables for security reasons.

What is confusing to you about these methods?

The hardest part to understand is to know when to use attr_reader, writer or accessor.  A lot of the time it just feels easier to give everything access, but I know what mistakes that can cause further down the road.

=end