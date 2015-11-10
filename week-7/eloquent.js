// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var number_of kitties = 1;
var number_of_kitties =  number_of_kitties + 100;
console.log(number_of_kitties);

prompt("What is your favorite food?");
alert("Hey, that's my favorite, too! :D");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// FizzBuzz
for(var counter=1; counter <= 100; counter++)
{
    if (counter % 15 == 0)
console.log("FizzBuzz");
    else if (counter % 5 == 0)
        console.log("Buzz");
else if (counter % 3 == 0)
        console.log("Fizz");

    else console.log(counter);
}



// Functions

// Complete the `minimum` exercise.

function min(a, b) {
  if (a < b)
    console.log(a);
  else (a > b)
    console.log(b);
}

var me = {
	name: ["Sabrina"]
	age: [22]
	favorite_foods: ["chocolate", "sushi", "peanut butter"]
	quirk: ["reads over 100 books each year"]
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

// Did you learn anything new about JavaScript or programming in general?
// I learned some history of JavaScript, which is always helpful information to have.

// Are there any concepts you feel uncomfortable with?
// Having never seen JavaScript before, it is something that I am completely uncomfortable with. The syntax is what's tripping me up right now.

// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.

// JS uses + - / * and %, which is the same as in Ruby.

// Null functions very similarly to nil.

// What is an expression?
// A fragment of code that produces a value

// What is the purpose of semicolons in JavaScript? Are they always required?
// They let you know the end of a statement. This is reminding me of CSS. While not always required, they are used almost all of the time, so it is probably good practice to use them.

// What causes a variable to return undefined?
// If you do not assign a value to a variable.

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// console.log returns a value to the console. This is similar to the Ruby methods p, puts and print.

// Describe while and for loops
// While and for loops are ways of repeating code without needing to type it all out. You can preform previously written actions on updated values.

// What other similarities or differences between Ruby and JavaScript did you notice in this section?
// Uses {}, but also has syntax that circumvents the need to use them

// Boolean operators operate basically the same way

// Reassinging variables works very similarly, too.

// What are the differences between local and global variables in JavaScript?

// Local variables are variables defined within a function. Global variables are variables defined outside of fuctions.

// When should you use functions?

// Functions seem to be somewhat similar to methods and creating and defining new methods in Ruby. It helps to prevent a block of code from repeating itself.

// What is a function declaration?

// A function declaration defines a variable but also gives it something to do.

// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]

// Using a dot is referring to a variable, using bracket notation is referring to a value by property name. If the string you are trying to access does not have a valid variable name, you want to use bracket notation.

// What is a JavaScript object with a name and value property similar to in Ruby?

// This reminds me a lot of a Hash, just with different notation, but a similar concept.