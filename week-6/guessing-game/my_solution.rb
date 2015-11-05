# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: a number, supposed to a guess for the guessing game
# Output: whether or not the guess was correct (true/false). IF incorrect, THEN say whether the guess was too low or too high
# Steps:
# Create Class for guessing game with initialize as the answer
# create instance variables for "guess" and "solved"
# guess variable will return low if the guess is too low, high if the guess is too high, and correct if the guess is correct
# solved variable will return true if the correct answer has been guessed and false if the incorrect answer was guessed

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @guess_evaulation = nil
  end
  
  def guess(number)
    if number > @answer
     @guess_evaluation = :lower
   
    end
    if number < @answer
      @guess_evaluation = :higher
     
    end

    if number == @answer
      @guess_evaluation = :correct
    end

    @guess_evaluation
   end
  
  def solved?
    if @guess_evaluation == :correct
      return true
    else
      return false
    end
  end
end

game = GuessingGame.new(25)

p game.guess(9)
p game.solved?


# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @guess_evaulation = nil
  end
  
  def guess(number)
    if number > @answer
     @guess_evaluation = :lower
  
    elsif number < @answer
      @guess_evaluation = :higher
     
    else number == @answer
      @guess_evaluation = :correct
    
    @guess_evaluation
   end
  end
  
  def solved?
    @guess_evaluation == :correct ? true : false
    end
end
game = GuessingGame.new(25)

p game.guess(25)
p game.solved?


# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# I am not sure if I understand the question, but one thing is that if you have an if statement, there needs to be an else statement, even if it is implied and the code provides the second half automatically. For instance, if you have an if statement that can be true, if it is not true then it is false. However, Ruby is able to complete this automatically, so if you have a true statement, you don't always need to prove a false statement, too. This is just a common rule of opposites. You wouldn't be using an if statement if there wasn't an else statement to follow, just like in real life.

# When should you use instance variables? What do they do for you?

# Instance variables are helpful when you want to use a variable in a Class for more than one of the methods. I imagine this is somewhat similar to creating a global variable with a more limited scope.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# I did struggle a bit with flow control, but mostly in figuring out what symbols were doing, but also in figuring out what the variables I was using were actually representing. Sometimes I find it hard to figure out exactly what is doing what where. It took me awhile to realize that I needed a guess_evaluation variable working in order to test the guess, and that really helped with flow control. Generally though, flowing between methods is getting easier.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# Symbols are like strings, but they process much more quickly than strings. Also, symbols can only be used once and they all have the same ID number, although I'm not sure what that means for this problem in particular, and although I recognized that they function very similarly to strings, it took some getting used to. Because I haven't worked with them before and I don't know much about them, I am honestly not sure what the purpose of using them in this problem was, except to introduce us to a new concept.