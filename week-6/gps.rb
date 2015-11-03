# Your Names
# 1) Sabrina
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, number_of_people)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #error_counter = 3

  #menu.each do |food|
   # if menu[food] != menu[item_to_make]
  #    p error_counter += -1
  #   end
  # end

  # if error_counter > 0
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end

  if !menu.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # serving_size = menu.values_at(item_to_make)[0]
  serving_size = menu[item_to_make]
  people_left_over = number_of_people % serving_size

  case people_left_over
  when 0
    return "Calculations complete: Make #{number_of_people/serving_size} #{item_to_make}(s)"
  else
    return "Calculations complete: Make #{(number_of_people/serving_size) + 1} #{item_to_make}(s)"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?

# One of the most surprising things in this challenge was the lack of clarity in variable names. This is what caused the most confusion for me when going through the challenge. I didn't know what the actual purpose of the variables was supposed to be because they were named so inefficiently, and now that we have changed the variables, everything going on here makes so much more sense.

#   The other big thing would be to make sure that you're doing your code the simplest way it can possibly be done, because unnecessary methods really muddy up a program and make things harder to understand as a reader.

# Did you learn any new methods? What did you learn about them?

# While I had used has_key? before, it was good to get more practice, seeing as I had only used it once. I also didn't know that if you put a ! at the beginning of a method that it will do the opposite. This makes sense, considering != means does not equal, but I didn't know it would work that way. I also hadn't used a case statement before, but in this context I understand what it is doing.

# What did you learn about accessing data in hashes? 

# It is much more efficient and easier for the reader of your code to just call a value by using a key. The original way the code was written changed the hash to an array and then the program switched to indicies, which was really confusing. In this circumstance, and I imagine most circumstances in the future, the simplest way is the most clear.

# What concepts were solidified when working through this challenge?

# Accessing values from a hash, refactoring in general, the modulous operator, writing ArgumentErrors