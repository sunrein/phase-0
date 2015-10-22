LINKS TO OTHER SUBMISSIONS:
https://github.com/sunrein/phase-0/blob/master/week-4/address/my_solution.rb
https://github.com/sunrein/phase-0/blob/master/week-4/math/my_solution.rb

puts 'Hello there, and what\'s your first name?'
f_name = gets.chomp
puts 'What is your middle name?'
m_name = gets.chomp
puts 'Cool, and what\'s your last name?'
l_name = gets.chomp
puts 'Very nice to meet you ' + f_name + ' ' + m_name  + ' ' + l_name + '! :)'

puts 'What is your favorite number?'
fav_num = gets.chomp
puts 'That\'s cool. But do you know what an even better number is?'
puts'A bigger one.'
puts 'How about'
puts fav_num.to_i + 1


How do you define a local variable?
Local variables are made by naming a variable and assigining it a value. This value can be one submitted by the user, in which case you would use "gets.chomp" in order to receive user data. Local variables should begin with lower case letters and have underscores instead of spaces. They are called local because of their limited scope. They are only recognized in certain areas of the program, based on where and how they are defined.

How do you define a method?
	Start by declaring a method and the parameters. For instance "def  method(a,b,c)." from there you can give the method an action to do when called. Make sure to include "end" when done.

What is the difference between a local variable and a method?

a local variable is something that is performed once. You have to ask for variables individually. A method performs a set of actions all at once, so it saves time in having to request and output information.

How do you run a ruby program from the command line?

Type "ruby" followed by the name of the ruby file you are trying to run.

How do you run an RSpec file from the command line?
	Type rspec followed by the name of the respec file you are tyring to run.

What was confusing about this material? What made sense?

Some of the directions were unclear. They used Ruby vernacular that had not ever been described before, like "defining parameters," which took awhile to figure out. Once I knew what you were asking for, the exercises were pretty simple. It was the vague nature of the language used without explaination that made things more difficult. I just did not know exactly what was being asked of me.
