=begin

Use hash to store data
Create empty container
Imput:Add item, Remove item, Update quantities
Output: Print the list

=end

grocery_list = {}

def add_item(item, quantity, grocery_list)
 	grocery_list[item] = quantity
end

def remove_item(item, grocery_list)
  grocery_list.delete(item)
end

def update_quantity(item, quantity, grocery_list)
  grocery_list[item] = quantity
end

def display_list(grocery_list)
  grocery_list.each do |item, quantity|
  puts "You have " + quantity.to_s + " " + item + "."
  end
end


add_item("Lemonade", 2, grocery_list)
add_item("Tomatoes", 3, grocery_list)
add_item("Onions", 1, grocery_list)
add_item("Ice Cream", 4, grocery_list)

display_list(grocery_list)

remove_item("Lemonade", grocery_list)

display_list(grocery_list)

update_quantity("Ice Cream", 1, grocery_list)

display_list(grocery_list)


=begin
What did you learn about pseudocode from working on this challenge?

I feel like my pseudocode could be more detailed. What I wrote above was pretty basic, and maybe breaking down the challenge into even smaller pieces would have helped us. It feels somewhat unnatural to translate words into code, and I'm sure that it will just get better with practice.

What are the tradeoffs of using Arrays and Hashes for this challenge?

Hashes are better for this challenge because hashes store keys and values together. It is much easier to specifiy a quantity of an item if you have it stored in a hash. I imagine that you would need two arrays in order to complete this challenge: one with the items and one with the quantities, which would make this challenge a bit more confusing.

What does a method return?

Methods return nil by default unless you give them something to return using "return," "p," "puts," or "print."

What kind of things can you pass into methods as arguments?

Arguments can be strings, integers, floats, keys, values, arrays, multi-dimensional arrays...they can be a lot of different things.

How can you pass information between methods?

Storing information in a hash is helpful because then you are calling from one pool of data between each method, rather than needing to set individual variables for each individual methods, or set a bunch of global methods.

What concepts were solidified in this challenge, and what concepts are still confusing?
This was good practice with hashes and using multiple methods in tandem. I think I could use a bit more practice with hashes, since last week was all about arrays, but in general I felt pretty good about this challenge. I feel like I understood all of the components, it was just working through them that was the tricky-ish part. Knowing how all of the pieces of Ruby fit and work together is something that will just take more time and practice, I'm sure.
=end
