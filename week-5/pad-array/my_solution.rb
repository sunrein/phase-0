# Pad an Array

# I worked on this challenge [by with Nil]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
=begin
Pseudocode

Non-destructive

input: array (array), length (int)
output: a new array (array)

if the given size is zero, return the same array
if the size of the array is smaller than the padding value, add enough empty elements to get to the desired size
check to see if the given array's lengh is shorter than the desired length
if it is, return the exsiting array
otherwise, start looping length number of times
for the first (length ofthe array) times, just copy elements from the existing array into a new one
for the (length - length of the array) times, add elements with the padding value (or nil)
=end


# 1. Initial Solution
#destructive

def pad!(array, min_size, value = nil) #destructive
  new_array = Array.new
  if (min_size == 0) || (array.length > min_size) || (array.length == min_size)
    i = 0
    return array
  elsif (array.length < min_size)
    counter = 0
    while min_size > counter do
      if (counter < array.length)
        #new_array[counter] = array[counter]
      elsif
        #array.push(value)
        array[counter] = value
      end
      counter += 1
    end
  end
  
  return array
end

#non-destructive
def pad(array, min_size, value = nil)
  new_array = Array.new
  if (min_size == 0) || (array.length > min_size) || (array.length == min_size)
    i = 0
    array.each do |element|
      new_array[i] = element
      i += 1
    end
    return new_array
  elsif (array.length < min_size)
    counter = 0
    while min_size > counter do
      if (counter < array.length)
        new_array[counter] = array[counter]
      elsif
        new_array[counter] = value
      end
      counter += 1
    end
  end
  
  return new_array
end


# 3. Refactored Solution




def pad!(array, min_size, value = nil) #destructive
  if (min_size == 0) || (array.length > min_size) || (array.length == min_size)
    return array
  elsif (array.length < min_size)
    while min_size > array.length do
      array.push(value)
    end
  end
  
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new
  if (min_size == 0) || (array.length > min_size) || (array.length == min_size)
    i = 0
    array.each do |element|
      new_array[i] = element
      i += 1
    end
    return new_array
  elsif (array.length < min_size)
    counter = 0
    while min_size > counter do
      if (counter < array.length)
        new_array.push(array[counter])
      elsif
        new_array.push(value)
      end
      counter += 1
    end
  end

  return new_array
end



# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?

I think we were successful. Our pseudocode was longer than I have ever made it before, but it really helped to break the challenge down into not only smaller pieces, but also language that looks and sounds more like English.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Generally, it was pretty easy to translate. Our main problem is that some of our logic in the psuedocode wasn't quite right, so the translation did not work perfectly, but generally it was easy to transfer from pseudocode to code.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial solution was not successful, but with some debugging, we figured out what was wrong. Some of the errors were syntax, like missing an "end." Others were structural, like needing to add a variable. We took the error messages step by step in order to find where the problem was.

When you refactored, did you find any existing methods in Ruby to clean up your code?

.push was very helpful in cleaning up our code and eliminiating several lines that were unnecessary when .push was implemented.

How readable is your solution? Did you and your pair choose descriptive variable names?

Our destructive solution is very readable. Our non-destructive solution is less so. It might have been improved if there was more dilinination between array and new_array, but those names are practical in figuring out what is going on in the code.

What is the difference between destructive and non-destructive methods in your own words?

A destructive method alters the original code, whether it be an array, a hash, or something else. A non-destructive method creates a new copy with the specified alterations, leaving the original version intact.

=end