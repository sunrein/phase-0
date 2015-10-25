# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_numbers)
  
  return nil if list_of_numbers.length == 0

  smallest_n = list_of_numbers[0]
 
  list_of_numbers.each do |n|
    if smallest_n > n
      smallest_n = n
    end
  end
  p smallest_n
end

smallest_integer([4,5,700,-1])