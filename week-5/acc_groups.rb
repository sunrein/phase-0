
	
=begin 
Pseudocode:

imput: students names as individual strings
output: groups of students, preferably in groups of 4-5
steps:

create an array that contains all of the students names
count total number of students
divide total by five: this will be the number of groups
sort by permutation or combination by this number - cannot remember which is which
OR divide array by 5s, if possible
OR find a method that will divide the array into the total of groups found earlier

=end

#First method:

def accountability_groups(array)
  number_of_groups = array.count / 5
  members_per_group = array.length / number_of_groups
  groups = array.each_slice(members_per_group).to_a
  print groups

end

accountability_groups(
island_foxes = 
["Abraham Clark",
"Alan Alcesto",
"Aleksandra Nowak",
"Alexander Williams",
"Alicia Quezada",
"Amaar Fazlani",
"Becky Lehmann",
"Bernice Anne W Chua",
"Brian Bensch",
"Brian Wagner",
"Carolina Medellin",
"Chris Gomes",
"Chris Miklius",
"Christopher M. Guard",
"Clinton Weber",
"Daniel Andersen",
"Darius Atmar",
"Edward Gemson",
"Fatma Ocal",
"Gregory Wehmeier",
"Igor Kazimirov",
"Jacob Crofts",
"James Artz",
"Jon Clayton",
"Josh Shin",
"Joshua Virgil Monzon",
"Karla King",
"Kris Albert Lee",
"Logan Bresnahan",
"Luis Fernando Plaz",
"Malia Lehrer",
"Michael Duke",
"Michael Whelpley",
"Natalie Polen",
"Natasha Thapliyal",
"Nicola Beuscher",
"Nil Thacker",
"Nimi Samocha",
"Peter N Wood",
"Pratik Shah",
"Ryan Ho",
"Ryan Zell",
"Sabrina Unrein",
"Sasha Tailor",
"Scott Chou",
"Shawn Spears",
"Shea Munion",
"Solomon Fernandez",
"Tal Schwartz",
"Timothy Meixell",
"Trevor Newcomb",
"Walter Kerr",
"Will Granger",
"William Brinkert",
"Zach Schatz"])


# second method
def accountability_groups(array)
groups = array.shuffle.each_slice(5).to_a
  print groups
end

# Reflection

=begin
What was the most interesting and most difficult part of this challenge?

This was an intellectual challenge. The most difficult part was not using Ruby methods, because I could not think of any way to randomize the groups without using the .shuffle method. Playing around with new methods was definitely the most interesting part, and the most fun. It was really satsifying to see what they did and how they changed the way the groups divided.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

My use of pseudocode has improved, but I think it could still use some work. I'm having trouble figuring out if I've broken the challenge down into too many pieces or not enough.

Was your approach for automating this task a good solution? What could have made it even better?

I was unable to find a way to keep track of previous groups made with the program, so I think a program that kept track of old groups as well as produce new ones would be even better.

What data structure did you decide to store the accountability groups in and why?

I used an array to store the names. I was tempted to figure out a way to assign values to each of the names and store them in a hash, but I couldn't figure out how to make it work properly. I figured since the names are inherently singular, and have no inherent pair, I would keep it simple in an array.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I did. I was able to use slice and shuffle, which were not methods that I had used before. In fact, I wasn't really sure what I was doing without them, and couldn't get my program to work right. I'm sure these methods will be very helpful in the future.
=end