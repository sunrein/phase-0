# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Ryan Zell]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? accepts array as argument,imput can be numbers or strings
# What is the output? (i.e. What should the code return?)returns array of integer(s) or object(s) 
# with most frequent apperence
# What are the steps needed to solve the problem?
#1. Define method as mode
#2. Set argument as an array
#3. count objects in the array
#4. Return mode as an array of the most frequent object(s)


# 1. Initial Solution

=begin
def mode(array)
  input = array
  home = []
  counter = Hash.new(0)
  input.each do |i|
    counter[i] += 1
  end
  counter.each do |key, value|
    if value == counter.values.max
      home << key
    end
  end  
  return home
end
=end

# 3. Refactored Solution
def mode(mode)
  mode_return = mode.inject({}) { |k, v| k[v] = mode.count(v); k }
  mode_return.select { |k,v| v == mode_return.values.max }.keys
end


# 4. Reflection

=begin
Which data structure did you and your pair decide to implement and why?
My pair and I chose to use a hash. This is because we could have a key to represent each object in the array, and a value to represent the number of those objects present, so we could keep track of both in tamdem. This was key in being able to find the mode, and was the way that initially made the most sense to me, so we tested it out and it worked. We then put the mode key back into the array to give us the answer.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 


What issues/successes did you run into when translating your pseudocode to code?

We didn't know exactly how to make our idea happen. I came up with the hash idea fairly quickly, but figuring out how to get the numbers back into an array took some experimenting.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

For our initial solution, we used .each, and with a little research, found out how to use .values and .max. .values was a little tricky to figure out because at first we couldn't get it to work because our structure was written .max.values, but when we switched it to .values.max it worked. In terms of the refactoring, we did find a way of doing it more efficiently, turing our entire code into two lines, but I'm still not sure exactly how it works. The .inject method seems to make a new hash, and puts the array into that hash, which bypasses a lot of the initial work we had to do. While I do not quite understand the refactored version, it was one of the only ways we could figure out how to simplify the method. 
=end