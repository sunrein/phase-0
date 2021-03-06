#Attr Methods

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

#Pseudocode
# input: a name
# output: a greeting that uses the name


class NameData
  attr_accessor :name  
  def initialize
    @name = "Sabrina"
  end
end

class Greetings

  def initialize
    @my_name =  NameData.new.name
  end
  
  
  def hello
    puts "Hello " + @my_name + "! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello



# Reflection

#Release 1
# What are these methods doing?

# Some of these methods are acting as storage for the information name, age, and occupation. In a lot of ways, this reminds me of hashes, more specifically, the storage of a key and a value. Here, we are using instance variables to do something very similar. The other methods serve as ways to alter the data.

# How are they modifying or returning the value of instance variables?

# The methods are returning or reassinging the values of the instance variables. We initialize with a specific set of data, but we are able to modify the data using methods that change what the variables ultimately return.

#Release 2

# What changed between the last release and this release?

# The biggest change between release one and release two is the introduction of attr_reader :age. This returns the value age without having the ability to change it, which is why we still have the method change_my_name=. Also, because of the inclusion of attr_reader :age, there is no longer a need for the what_is_age method. age is a method we can call in our profile maker because we have the attr_reader.

# What was replaced?

# attr_reader :age replaced the what_is_age method.

# Is this code simpler than the last?

# Yes, I would say that this code is simpler, if for no other reason than it has fewer lines of code. The age method is doing in one line of code what the what_is_age method was doing in three lines of code.

#Release 3

# What changed between the last release and this release?

# Much like in release 2, the biggest change here is the inclusion of attr_writer.

# What was replaced?

# attr_writer replaces the change_my_age method. We no longer need this method because we can rewrite the age by using the age method we have implemented here. It accepts arguments just like a normal method would.


# Is this code simpler than the last?

# Yes, this code is simpler. We have condensed two several line methods into two lines of code, the attr_writer and the attr_reader, which can store, return, and replace the age.

# Release 6

# What is a reader method?

# A reader method accepts an element (like a name, age, or occupation), and stores that information in a method. This way, say if you had a attr_reader :name, you could call the method .name and it would return the value that was assigned to name.

# What is a writer method?

# A writer method can change the value stored in the method of the same name. Much like you can call the value of attr_reader :name with .name, you can also change the value of .name if you have attr_writer :name

# What do the attr methods do for you?

# This cleans up the code, elminiating the need to include methods that return or change values.

# Should you always use an accessor to cover your bases? Why or why not?

# No. In the case of the challenge here, I used just attr_reader because there was no need to ever change the name, or at least that was not specified in the challenge. You should think about what you want attr to do, and then use it accordingly.

# What is confusing to you about these methods?

# I am still not entirely sure how classes work. Once I have completed a challenge, everything makes sense, but sometimes getting there can be a bit of a hassle. For instance, it took awhile to synthesize what the earlier releases of the challenges had to do with this challenge, when the provided examples didn't use attr at all. It was very confusing. I probably just need more practice.