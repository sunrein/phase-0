# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #method for generating bingo letters
    #create an array that contains the letters [B, I, N, G, O] and an array [1..100]
    #convert the numbers to strings
    #call a randomizing method on these arrays
    # result 1 (letters) + result 2 (numbers)

# Check the called column for the number called.
  # in the bingo board, assign letters to each of the indecies
  # B = 0 
  # I = 1 
  # N = 2
  # G = 3
  # O = 4
  # create a LOOP that will check the letter's corresponding index for each of the bingo arrays
# If the number is in the column, replace with an 'x'
  # if the number is equal to the number in the bingo board, use .map or .collect to replace that letter with an "x"

# Display a column to the console
  #print the letters' corresponding array indecies to the console
  # if the letter was B, PRINT all of the array's 0 indecies

# Display the board to the console (prettily)
  # turn the arrays into strings, and join them together when printed so that they aren't divided by commas or ''
  #P each of the arrays to the console
# Initial Solution

class BingoBoard

  attr_reader :bingo_board
  def initialize(board)
    @call = call
    @bingo_board = board 
  end

  def call
    # letters = ["B"]
    # numbers = (1..100).to_a
    # @call = letters.shuffle[0] + numbers.shuffle[0].to_s
    @call = "B47"
  end
  

  def check
    b_values = Array.new(0)
    if @call.include? "B"
      b_values.push @bingo_board[0][0]
      b_values.push @bingo_board[1][0]
      b_values.push @bingo_board[2][0]
      b_values.push @bingo_board[3][0]
      b_values.push @bingo_board[4][0]
    
      b_values.map! do |number|
        if @call.include? number.to_s
         p "x"
        else
          number
        end
        end
    
      @bingo_board.each_with_index do |bingo_board_row, bingo_board_index|
        if b_values[bingo_board_index] == 'x'
          bingo_board_row = 'x'
  
        end 
        end
      
        end  
  
    
    if b_values.include? "x"
      @bingo_board.map! do |x|
        p "x"
      end
    end
    return @bingo_board
  end
  
end

# I realized that this was not a sustainable way of doing the problem. I was creating more issues for myself than I was solving and I gave up trying this method. I then started the way below, which I am considering my refactored solution (actually functional!)

# Refactored Solution



class BingoBoard

    def initialize(board)
        @bingo_board = board
    end

    def call
        letters = ["B", "I", "N", "G", "O"]
        numbers = (1..100).to_a
        @call = letters.shuffle[0] + numbers.shuffle[0].to_s
      
    end


    def check
        if @call.include? "B"
            @bingo_board.each do |bingo_board_row|
                if @call.include? bingo_board_row[0].to_s
                    bingo_board_row[0] = "x"
                end
            end
        
      
          elsif @call.include? "I"
            @bingo_board.each do |bingo_board_row|
                if @call.include? bingo_board_row[1].to_s
                    bingo_board_row[1] = "x"
                end
            end
        
      
          elsif @call.include? "N"
            @bingo_board.each do |bingo_board_row|
                if @call.include? bingo_board_row[2].to_s
                    bingo_board_row[2] = "x"
                end
            end
        
      
          elsif @call.include? "G"
            @bingo_board.each do |bingo_board_row|
                if @call.include? bingo_board_row[3].to_s
                    bingo_board_row[3] = "x"
                end
            end
        
      
        else @call.include? "O"
            @bingo_board.each do |bingo_board_row|
                if @call.include? bingo_board_row[4].to_s
                    bingo_board_row[4] = "x"
                end
            end
        end
      
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
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
p new_game.bingo_board
#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# Like anything, I think pseudocoding is something I will improve upon with practice. I got really stuck in my pseudocode because it was the first way I thought of solving the problem, so I was treating it like it was the only way. The unfortunate part is that this way was not sustainable, but it was difficult to get out of my head. I thought breaking down the challenge was easy at first, but I think I broke it into too many unnecessary steps.

# What are the benefits of using a class for this challenge?

# You can have a bunch of methods all using the same variables without needing to set the variables for each method, which really cleans things up.


# How can you access coordinates in a nested array?

# You use indeces to do this. For instance, you can call indeces side by side like [0][1] to call the first object and then the second object within that first object.

# What methods did you use to access and modify the array?

# include? was a lifesaver. It was a way of scanning an array for what I needed and moving on to the next if it didn't find it. Also, at first I did not utilize .each because I didn't see a way, but it also proved very helpful in keeping my code DRY. It still isn't entirely so, but much more than it would have been if I had followed through with my initial solution.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# .each_with_index is a method that I tried using. I'm not sure if I was using it correctly, but it is supposed to include the index, not just the value. That could be helpful in a future challenge. I also tried to get .replace to work to no avail in this particular challenge, which replaces arrays with new arrays. I really wanted it to just replace a certain element in an array, but I couldn't figure out how to get that to work, either.

# How did you determine what should be an instance variable versus a local variable?

# If you only need to use a variable in one method, it should be a local variable. If you are using it across multiple methods with the same value, then you should use an instance variable. If my bingo generator was a local variable, it would be much more challenging to have the value generated carry between methods.

# What do you feel is most improved in your refactored solution?

#   Well it is definitely shorter and easier to read. Also, it works, unlike my first solution, which is a marked improvement. It is much more efficient as well, and using .each and .include? really helped with that. I'm sure I could refactor more, but I think I've worked on this challenge long enough.