# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below
#initial
def array_concat(array_1, array_2)
    combo = []

    array_1.each do |a| 
       combo.push(a)
    end

    array_2.each do |b| 
        combo.push(b)
    end

    p combo
end

array_concat([1,2,3], [4,5,6])

#refactored
def array_concat(array_1, array_2)
  (array_1).concat(array_2)
  p array_1
end
