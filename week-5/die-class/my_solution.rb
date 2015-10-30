# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: a die in the Die class with a number of sizes
# Output: a roll that falls within the parameters of the die's number of sides
# Steps: 

# initialize the Die class with sides and roll variable
# create sides method that accepts numbers 1 or higher
# roll method rolls the die, randomizing the result


# 1. Initial Solution
class Die
  def initialize(sides)
    @sides = sides
    @roll = roll
     if @sides < 1
    raise ArgumentError.new("Can only accept numbers greater than 1")
  end
    return 
  end

  def sides
   return @sides
  end

  def roll
    1 + rand(@sides)
  end
end

d = Die.new(100)
puts d.sides
puts d.roll

# 3. Refactored Solution
class Die
  def initialize(sides)
    @sides = sides
    @roll = roll
     if @sides < 1
    raise ArgumentError.new("Can only accept numbers greater than 1")
  	end
  end

  def sides
    @sides
  end

  def roll
    1 + rand(@sides)
  end
end


# 4. Reflection
=begin
What is an ArgumentError and why would you use one?

The argument error helps you specify the parameters of your class, and what it will accept. By defining what it will not accept, by the same logic you are telling the program the parameters you will accept, and devising an error method to guide the person using the program in the right direction.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I had never used the rand method before, but considering that the rspec file also used it, I figured it was okay to use in the inital program, too. I had very minimal challenges in this program. I originally had the Argument Error in the wrong place, and that took awhile to figure out, but that's the closest thing to an issue that I had. I had a lot of success with this program because the resources provided were helpful and the challenge itself was simple. Or maybe I'm just getting better at pseudocoding

What is a Ruby class?

A Ruby class is a blueprint that maps all of the specificities of things that fall within that class. Classes help us construct objects by defining them and assigning them methods. I found the example of the dog class on rubylearning.com to really help me understand what a class is.

Why would you use a Ruby class?

This is a way of simplifiying code. Rather than having a bunch of local or global variables and methods, this is a way of having one group of objects behave in a particular way. Ruby classes are much more efficient than a bunch of separate methods and variables.

What is the difference between a local variable and an instance variable?

Local variables are only applicable within one specified method. An instance variable is a variable that is defined within, and therefore applicable to, an entire class.

Where can an instance variable be used?

Because the instance variable is defined in the class, it can be used inside all of the methods within the class without needing to be defined repeatedly.

=end