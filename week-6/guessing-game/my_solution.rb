
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