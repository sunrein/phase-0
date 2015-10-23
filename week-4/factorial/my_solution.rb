# Factorial

# I worked on this challenge [with: Darius].


# Your Solution Below

=begin
Some number n
n * n-1 * n-2 .. * 1
if n == 0, return 1

Make counter i starting at n. Make product variable to store multiplied values.
  
Iterate down by 1 each time until i = 1.
=end

def factorial(n)
  if n == 0
    return 1
  end
  i = n - 1
  product = n
  while i > 0
    product = product * i
    i -= 1
  end
  return product
end
