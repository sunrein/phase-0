# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
# create method super_fizzbuzz that accepts an array as an argument
# iterate through the array, examining each number within
# if x % 3 == 0, puts fizz
# if x % 5 == 0, puts buzz
# if x % 15 == 0, puts fizzbuzz
# push new values to array, return array


# Initial Solution
def super_fizzbuzz(array)
  fizzbuzzed = []
  array.each do |x|
    if x % 15 == 0
      fizzbuzzed << "FizzBuzz"
   elsif x % 5 == 0
     fizzbuzzed << "Buzz"
    elsif x % 3 == 0
    fizzbuzzed << "Fizz"
    else 
    fizzbuzzed << x

    end
  end
  return fizzbuzzed
  print fizzbuzzed
end

p super_fizzbuzz([30, 9, 20, 1])


# Refactored Solution
def super_fizzbuzz(array)
  fizzbuzzed = []
  array.each do |x|
  case
    when x % 15 == 0
      fizzbuzzed << "FizzBuzz"
    when x % 5 == 0
      fizzbuzzed << "Buzz"
    when x % 3 == 0
      fizzbuzzed << "Fizz"
    else
      fizzbuzzed << x
    end
  end
  return fizzbuzzed
end

p super_fizzbuzz([30, 9, 20, 1])

# Reflection

# What concepts did you review or learn in this challenge?

# While maybe not the most practical usage, I did get to test out a case statement. Also, I reviewed looping in Ruby, which sadly I needed after a week of working in JavaScript. I can't believe I'm already so rusty!

# What is still confusing to you about Ruby?

# Nothing was particularly confusing about this challnege. It was good practice, which I certainly need more of.

# What are you going to study to get more prepared for Phase 1?

# I'd like to do a few more of these challenges, just to get my brain thinking on Ruby terms again.