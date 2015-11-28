// Pseudocode

// Create a function called FizzBuzz that will 
// 	return Fizz IF number % 3 == 0
// 	return Buzz IF number % 5 == 0
// 	return FizzBuzz IF number % 15 == 0
//	return the number IF ELSE
// to do this, create a for loop between 1 and 100 that will run through the provided list of numbers, and perform the above actions if it meets one of those conditions

//Initial

(var i=1; i <= 100; i++)
	{
		if (i % 15 == 0)
			console.log("FizzBuz");
		else if (i % 3 == 0)
			console.log("Fizz");
		else if (i % 5 == 0)
			console.log("Buzz")
		else
			console.log(i);
	}

//Refactor
// I did find some other ways of solving this problem, but none of them seemed "simpler" than what I did above, and I don't understand some of the methodology. I think that the way it is written above is good for now, and helped me get more practice with for loops.


// Reflection

// What concepts did you solidify in working on this challenge? 

// Mostly JavaScript syntax and for loops.

// What was the most difficult part of this challenge?
// Figuring out that the best way for me to do this challenge was to use a for loop and not an overly complicated function.

// Did you solve the problem in a new way this time?

// Yes, in that I used a for loop, which is something that there isn't really an equivalent for in Ruby, at least not in my experience.

// Was your pseudocode different from the Ruby version? What was the same and what was different?

// Yes, because I originally thought of tackling this challenge with a function, which isn't quite the same as anything in Ruby. However, I realized that I didn't need to do a function and a for loop. The principle behind the challenge is the same though, in terms of how to return the proper values.