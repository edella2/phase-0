=begin

# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  
  define method call
  array of possible letters of [b,i,n,g,o]
  shuffle the array and take the first index, add a rand number up to 100 to string


# Check the called column for the number called.
  create a case for letters, B is index 0 (col 1), I is index 1 (col 2), etc.
  if method call matches board return true


# If the number is in the column, replace with an 'x'
  if method check returns true, replace array index where true with 'x'

# Display a column to the console
  create a case where letters control
  if B is chosen, set index to 0
  if I is chosen set index to 1
  iterate through the arrays set second array point to index choice

# Display the board to the console (prettily)
  Iterate through a row of arrays and return a new line


=end
# Initial Solution

class BingoBoard
  @@letters = ["B","I","N","G","O"]


  def initialize(board)
    @bingo_board = board
  end

  def call
    @numbers = rand(100)
    @current_call = @@letters.shuffle[0] + @numbers.to_s
  end

  def check
    case @current_call[0]
    when "B"
      @idx = 0
    when "I"
      @idx = 1
    when "N"
      @idx = 2
    when "G"
      @idx = 3
    when "O"
      @idx = 4
    end

    @bingo_board[@idx].each do |nums|
      if nums == @numbers
        nums = "x"        
      end
    end
  end
  
  def show
    @bingo_board.each {|row| p row }    
  end

end

# Refactored Solution

class BingoBoard
  @@letters = ["B","I","N","G","O"]


  def initialize(board)
    @bingo_board = board
  end

  def call
    @numbers = rand(1..99)
    @current_call = @@letters.shuffle[0] + @numbers.to_s
  end

  def check
    case @current_call[0]
    when "B"
      @idx = 0
    when "I"
      @idx = 1
    when "N"
      @idx = 2
    when "G"
      @idx = 3
    when "O"
      @idx = 4
    end

    @bingo_board[@idx].each_with_index do |nums,index|
      if nums == @numbers
        @bingo_board[@idx][index] = "X"        
      end
    end
  end

  
  def show
    p @@letters
    @bingo_board.each do |row|
      p row
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.call
p new_game.check
p new_game.mark
new_game.show

=begin

REFLECTION

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

I found the pseudocoding difficult for this problem.  It was much easier using pseudocode for smaller problems.  I think for future assignments I need to do a better job at breaking down big tasks into smaller ones to write more effective pseudocode.

What are the benefits of using a class for this challenge?

BY using a class anytime we want to just deal with things related to bingo we can call upon it's methods more easily.

How can you access coordinates in a nested array?

You can access coordinates in a nested array by doing array[column][row].

What methods did you use to access and modify the array?

I used the each_with_index method to keep track of which index I was on to change just that location of the array.

How did you determine what should be an instance variable versus a local variable?

I made anything that was being accessed by multiple methods a instance variable.  I also made variables a instance variable incase I wanted to create other methods in the future to use with them.

What do you feel is most improved in your refactored solution?

The code is just cleaner and looks nicer.  I wasn't able to come up with other ways to refactor the solution using new methods.  I did consider making many of my do-ends into one liners though.

=end