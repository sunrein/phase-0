# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hour on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error.
# errors.rb
# 2. What is the line number where the error occurs?
#  170
# 3. What is the type of error message?
# Unexpected end-of-input, expecting keyword_end
# 4. What additional information does the interpreter provide about this type of error?
# None, that's the entirety of the message.
# 5. Where is the error in the code?
#  Line 16 needs an "end."
# 6. Why did the interpreter give you this error?
# While the def had an "end," the operation of "while" did not. They both require ends, and Ruby was looking through the entire document for that missing word, hence why the error message ocurred at the very bottom of the document.

# --- error -------------------------------------------------------

south_park = "Oh my god, they killed Kenny!"
south_park_2 = "You bastards!"

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# unidentified local variable or method south_park 
# 4. Where is the error in the code?
# The entire thing is an error because it is done incorrectly.
# 5. Why did the interpreter give you this error?
# The interpreter needs something to be defined. Either this is going to be the name of a variable, or is what a variable will equal. This is either defined or defining something unspecified in the code.

# --- error -------------------------------------------------------

def cartman(cheesy_poofs)
end

# 1. What is the line number where the error occurs?
# 52
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# Again, this entire piece of code is flawed because it is missing a key element: the method. We have named the method here, but we don't know what parameters it is defining
# 5. Why did the interpreter give you this error?
# There needs to be something in the parantheses above, giving the method something to do. It also needed the "def" and "end" pieces in place

# --- error -------------------------------------------------------

#def cartmans_phrase(catchphrase)
 # puts catchphrase
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 68
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0) 
# 4. Where is the error in the code?
# In line 68, there needs to be a parameter given to the method to complete.
# 5. Why did the interpreter give you this error?
# The method did not define how many arguments it expected. There were no parentheses telling it how many to expect. Also, the way it was defined would always return "I'm not fat; I'm big boned!" and never the imput phrase, which I also fixed, even though it wasn't an "error."

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says('Casa Bonita is my favorite place in the whole world, I\'ll just die if you don\'t take me. Please.')

# 1. What is the line number where the error occurs?
# 87
# 2. What is the type of error message?
# ArgumentsError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# The error is really in line 88, where it reads "puts offensive_message" and then again at line 91. 
# 5. Why did the interpreter give you this error?
# The main issue is that there is no argument given to perform on line 91. There needs to be something in the parentheses next to it. Also, you don't need puts in the method's definition.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Dammit, Kyle!')

# 1. What is the line number where the error occurs?
# 108
# 2. What is the type of error message?
# ArgumentsError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# in line 112, there is no second argument.
# 5. Why did the interpreter give you this error?
# You're asking the method to call 2, but then only give it one to call.

# --- error -------------------------------------------------------

 "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 127
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# The placement of the number 5 is where the problem is
# 5. Why did the interpreter give you this error?
# The way it was written, it was attempting to multiply the number 5 "respect my authoritay" times. Since the latter is not a number, it cannot be done. However, it should work if you switch the order of the two, which will then print "respect my authoritay" five times.

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
# 142
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# The arithmetic is mathematically impossible.
# 5. Why did the interpreter give you this error?
# You attempted to divide by 0, which is impossible.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 158
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /Users/sabrinaunrein/DBC-Stuff/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# The latter part, where it was trying to find the file "cartmans_essay.md"
# 5. Why did the interpreter give you this error?
# There is no such file on my local device, which is why there was a load error. It cannot load the file because it does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.


# Which error was the most difficult to read?

# The first error was the most difficult because it was very hard to tell where the actual error was ocurring. It specified line 170 as the error line, but that didn't make any sense. It was baffling for a couple of minutes, until I figured it out. The rest were pretty direct in terms of where the error ocurred and what was happening. The error code designations were very easy to follow.

# How did you figure out what the issue with the error was?

#I did do a little bit of research on StackOverflow for the first one, which proved to be a little helpful. The rest I figured out on my own just through context. Having experience with Ruby helped me figure out what was wrong because most of these methods were pretty simple. I'm sure that it will be harder to determine errors in the future. I find the information they give you about the errors in the error messages to be relatively straightforward and easy to understand.

# Were you able to determine why each error message happened based on the code? 

# Yes. I like that they give you an error message type. That really helped me locate the problem almost immediately, if it was not apparent before.

# When you encounter errors in your future code, what process will you follow to help you debug?

# The first step is to look at where the error is and what designation Ruby has given it. This will help pinpoint the general location of the error (probably), and I can go from there. I also think that StackOverflow will be a good resource if I do not understand the given error message.
