# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array

# Steps to solve the problem.

# n = sum
#sum == sum + index[i]
# i = i+1
# until i = array.length
# [a + b + c...]

# Output: sum of the array


# 1. total initial solution
=begin def total(n)
sum = 0
i = 0
  until i == n.length
  sum += n[i]
    i += 1  # i = i + 1
  end
  return sum
end

p total([1,2,3,4])
# 3. total refactored solution
def total(n)
  sum = 0
  n.each {|number| sum += number}
  return sum
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: String Array
# Output: One long string with spaces in between words
# Steps to solve the problem.
# index 0 start with capital letter
# Last word ends with a period.
# Iterate through array. Add each word to end of some string called sentence. Then add a space to it before going to next word.

# 5. sentence_maker initial solution
def sentence_maker(string_array)
  string_array[0].capitalize!
  sentence = ''
  string_array.each {|string| sentence += (string.to_s + ' ')}
  sentence[-1] = '.'
  return sentence
end

p sentence_maker(['hello', 'how', 'are', 'you'])
=end

# 6. sentence_maker refactored solution
def sentence_maker(string_array)
  string_array[0].capitalize!
  sentence = string_array.join(' ')
  sentence << '.'
  return sentence
end
p sentence_maker(['hello', 'how', 'are', 'you'])