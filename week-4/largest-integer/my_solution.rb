# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_numbers)
  
  return nil if list_of_numbers.length == 0

  largest_n = list_of_numbers[0]
 
  list_of_numbers.each do |n|
    if largest_n < n
      largest_n = n
    end
  end
  p largest_n
end

largest_integer([4,5,700,-1])