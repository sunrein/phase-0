# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# p array [1][2][0]
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# p hash[:outer][:inner][3]
# p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]


number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner + 5}
  else
    element + 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# a = [ "a", "b", "c", "d" ]
# a.map! {|x| x + "!" }
# a #=>  [ "a!", "b!", "c!", "d!" ]
# RELEASE 4: n-Dimensional Arrays

#Initial solution
# def startup_generator(array)
#   array.map! do |element|
#     if element.kind_of?(Array)
#       element.map! do |nested_1| 
#         if nested_1.kind_of?(Array)
#           nested_1.map! {nested_1.to_s + "ly"}
#         end
#       end
#     else
#    element + "ly"
#     end
#   end
# end

#REFACTORED
# def startup_generator(array)
#   array.flatten.map do |element|
#     element + "ly"
#   end
# end


p startup_generator(startup_names)

#Reflection
# What are some general rules you can apply to nested arrays?

# 1) You can only use hash methods with hashes, and array methods with arrays. Just because there is an array in a hash does not mean that hash methods will apply to that array.
# 2) Ruby is white space insensitive, meaning that line breaks will not affect the response of the data structure.

# What are some ways you can iterate over nested arrays?

# if statements help clarify which element in the nest you are accessing, and you can use nested if statements to go further into the structure. This is not a sustainable solution becuase theoritically there can be an infinite number of nested structures and you would need to write an infinate number of nested if statements. Similarly, you could use a loop to check for nested structures in your data structure.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

# 	We used map! This is something I have used before, but did not have extensive practice with. map! iterates over an array and alters the original array. We also used .flatten, which is something that I have never used before. It was nice because it removed all of the nested layers when iterating, and can be used destructively and non-destructively.