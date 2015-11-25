# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [.75] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# initialize PezDispenser class with flavors argument
# create method that returns the size of the flavors argument
	#input: flavors
	#output: number of Pez
# create eat method that removes Pez from dispenser
	#input: none
	#output: name of the flavor eaten
# create add_pez method that adds a flavor to the dispenser
	#input: new flavor
	#output: none
#create flavors method that returns a list of flavors contained in the Pez
	#input: none
	#output: flavors

# Initial Solution

class PezDispenser
  
  def initialize(flavors)
    @flavors = flavors
  end

  def pez_count
    @flavors.size
  end
  
  def see_all_pez
    @flavors
  end
  
  def add_pez(new_pez)
    @flavors << new_pez
  end

  def get_pez
    @flavors.pop
    return @flavors[0]
  end
  
end


# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
#What concepts did you review in this challenge?

#I picked two challenges that both utilized classes, so I got a lot of review done there. I like working with classes and having the way they work refreshed and solidified in my mind.

#What is still confusing to you about Ruby?

#I'm still not exactly sure what attr_reader, attr_writer, and attr_accessor do. I know what they do theoretically, but I haven't put them into practice in my own classes effectively yet.

#What are you going to study to get more prepared for Phase 1?

# I feel much more comfortable with Ruby concepts, and will probably mess around with a couple of the other Ruby challenges that I didn't have a chance to experiemtn wtih. I'd like to solidify my Ruby knowledge, especially coming out of a couple of JavaScript heavy weeks.
