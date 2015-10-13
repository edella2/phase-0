
=begin
# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: create a class that initializes the answer
# Output: return higher, lower or correct for answers guessed through the game
# Steps: create a class method called Guess that will return :low, :high, or :correct for answers

Create instance method that returns true if the last game was solved. False if it hasn't.

=end 


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @guess = nil
    @game_state = :start
  end

  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		@game_state = :correct
  	elsif @guess > @answer
  		@game_state = :high
  	elsif @guess < @answer
  		@game_state = :low
  	end
  end

  def solved?
  	if @game_state == :correct
  		return true
  	else
  		return false
    end
  end

  # Make sure you define the other required methods, too
end


game = GuessingGame.new(10)

p game.solved?
p game.guess(5)
p game.solved?
p game.guess(15)
p game.solved?
p game.guess(10)
p game.solved?



# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @guess = nil
    @game_state = :start
  end

  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		@game_state = :correct
  	elsif @guess > @answer
  		@game_state = :high
  	elsif @guess < @answer
  		@game_state = :low
  	end
  end

  def solved?  	
  	puts "The last guess was #{@guess}, and it was #{@game_state}"
  	if @game_state == :correct
  		return true
  	else
  		return false
    end
  end

end


game = GuessingGame.new(10)

p game.solved?
p game.guess(5)
p game.solved?
p game.guess(15)
p game.solved?
p game.guess(10)
p game.solved?





# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

We can often have a variable in real life of something like "solved" or "correct".  We can have these answers or variables for a number of games or puzzles we're sovling in life.  A method will also sometimes have common variable names that we might need to use for other classes.  This instance variable makes it only exist in 

When should you use instance variables? What do they do for you?

You should use them for the reasons above.  Instance variables exist inside a class and not outside of it.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control can become a factor when dealing with boolean statements.  Ordering them correctly makes it so you can refactor your code as much as possible.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Symbols provide a performance boost for programs.  Symbols refer to the same object ID.  Symbols can't also be changed  at run time which I believe will be very useful for future coding.

=end