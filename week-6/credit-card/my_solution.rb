# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with Shawn Spears].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer with 16 digits
# Output: True or False
# Steps:

# Raise ArgumentError if integer isn't 16 digits
# Set integer to instance variable
# Make instance variable an array

# Split double digit doubles into two separate numbers (10 becomes 1 and 0)
# Sum of array
# Divide by 10

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(integer)
    @card_number = integer.to_s.split('').map(&:to_i)
    @doubles = doubles
    @sum = sum
    if @card_number.length != 16
      raise ArgumentError.new('Must be 16 characters')
    end
  end
  
  def doubles
 @doubles = @card_number.map.with_index { |n, i| n * (i.even? ? 2 : 1) }
   @join = @doubles.map {|x| x.to_s}.join
   @split = @join.to_s.split('').map(&:to_i)
  end

  def sum
  @sum = 0
    @split.each do
      |a| @sum += a
    end
    p @sum
  end
  
  def check_card
    p @sum % 10 == 0
  end
  
end

# Refactored Solution
class CreditCard
  def initialize(integer)
    @card_number = integer.to_s.split('').map(&:to_i)
    @doubles = doubles
     @sum = sum
    if @card_number.length != 16
      raise ArgumentError.new('Must be 16 characters')
    end
  end
  
  def doubles
 @doubles = @card_number.map.with_index { |n, i| n * (i.even? ? 2 : 1) }.join('')
    @split = @doubles.to_s.split('').map(&:to_i)
  end

  def sum
    @sum = @split.reduce(:+)
  end
  
  def check_card
    @sum % 10 == 0
  end
  
end

# Reflection

# What was the most difficult part of this challenge for you and your pair?

# We seemed to overcomplicate some of the solution. We had a lot of good ideas about how to approach the solution, and we got stuck a few times, but I think our main problem is that we did not initially break down the problem into enough steps, and we did not know the proper methods to make the program work the way we wanted it to. We were never 100% stuck, but there was a lot of trial and error involved in the process.

# What new methods did you find to help you when you refactored?

# We used the reduce method, which I had never used before. We also got more practice with .split and .map, but those were more familiar to me before the challenge.

# What concepts or learnings were you able to solidify in this challenge?

# Working with Classes, controlling flow between methods, figuring out what variables represent and what they are doing in the method (clarity of naming definitely helps this). We also got more practice with ternary operators, which I have only used once before in an earlier challenge in week 6.