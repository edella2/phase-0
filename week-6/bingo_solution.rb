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

    @bingo_board[@idx].each_with_index do |nums,index|
      if nums == @numbers
        @bingo_board[@idx][index] = "x"        
      end
    end
  end

  def mark    
    if check == true
     
    end    
  end
  
  def show
    @bingo_board.each do |row|
      p row
    end
  end

end

# Refactored Solution



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