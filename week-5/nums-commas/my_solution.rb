# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? an integer of any length, no commas
# What is the output? (i.e. What should the code return?) the same integer or integers, except with commas in the appropriate places.
# What are the steps needed to solve the problem?:

=begin
Make method that accepts an integer as its argument
Specify that commas are not needed in numbers smaller than 1000
IF numbers are 1000 or over, then insert commas in the appropriate places (every three places, except at the end of the integer)
Maybe it should count backwards from the end of the number every three places, rather than count forward (?)
=end



# 1. Initial Solution
def separate_comma(integer)
  integer_string = integer.to_s
  comma = integer_string.length - 3
  while comma > 0
    integer_string.insert(comma, ",")
    comma -= 3
  end
  return integer_string
end


# 2. Refactored Solution

def separate_comma(integer)
  integer.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end


# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
My first approach separated numbers under 1000 and numbers over 1000, but I realized that that wasn't necessary once I worked out my solution. It also took me awhile to realize that I needed the integer to become a string in order for my solution to work. The realization that I needed a variable called comma to be three less than the integer itself was key. I knew right away I wanted the program to work backwards from the end of the integer.

Was your pseudocode effective in helping you build a successful initial solution?

It was somewhat helpful. I knew what I wanted to do and it was nice to have down on paper, but I did struggle to figure out that -= would work similarly to +=, and do just what I wanted it to do. Its these logical leaps that sometimes I struggle with.

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I really struggled to find any refactored solutions built entirely of methods I already know. I have no experience with gsub, so it took some googling to find an effective implementation of this method. I don't think I understand how to use it fully, but I do understand what it is doing. Using .reverse is another way of fixing my wanting to start at the end of the number that I didn't think of. I'm sure the refactored solution is more efficient, but I like seeing all of the steps laid out like in my initial verison.

How did you initially iterate through the data structure?

I kept my solution simple. I changed the integer to a string, through which I inserted commas every three places, counting from the end of the string.


Do you feel your refactored solution is more readable than your initial solution? Why?

The refactored solution is more readable in that it is more compact, but as a programming beginner, I do not fully understand what is happening inside of the method to make it function. I'll admit that the credit for the function itself goes to someone on StackOverflow, althoguh I only copied it after looking up the gsub method myself, but wasn't able to understand exactly how it works.

=end