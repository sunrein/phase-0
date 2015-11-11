// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Walter.

// Pseudocode

// We are writing a function that separates every three with commas.

// If the number is greater than 3 digits, search for -3 index and insert comma.  

// Set the counter length to 3 - 0 so that it stops when there are only three numbers remaining, comma addition stops.

// Create a counter and equal it to length of string - 3. 

// Create a loop so that while the counter is greater than 0, iterate through.  Everytime a loop passed through number, insert a comma.  


// Initial Solution
// function commas(integer) {
//   var integerString = integer.toString();
//   if (integer < 1000)
//     console.log(integer);
//   else
//     for (var counter=integerString.length - 3; counter > 0; counter--) {
//     console.log(integerString).slice(-3, 0, ',');  
//     }
  
// }

// commas(123456789012)


// Refactored Solution

function commas(number)
{
    var i = number.length % 3;
    var parts = i ? [ number.substr( 0, i ) ] : [];
    for( ; i < number.length ; i += 3 )
    {
        parts.push( number.substr( i, 3 ) );
    }
    return parts.join(',');
}

console.log(commas("3131313"))


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// One of our biggest downfalls in this challenge was approaching it from a Ruby mindset. We both found it difficult to evalutate the problem without making reference to our previous solutions when we did this challenge in Ruby, maybe because neither of us were very JavaScript literate. Not knowing what JS is uniquely capable of, it was easy to fall back on prevoius experience. Maybe if we had approached the problem differently, we would have successfully solved the problem. This is why our initial solution is unfinished. Our refactor is a slightly modified function that we didn't really create ourselves, but it was a way for us to talk through a solution that was successful, and we could figure out why by working backwards.

// // What did you learn about iterating over arrays in JavaScript?

// The biggest learning experience in all of this was definitely figuring out the for loops. I still don't have the hang of them, but I think that one of the biggest advantages I have is having a baseline in Ruby, so I can compare and better understand JS through the context of what I know in Ruby (for instance, console.log being equivalent to something like p.)

// What was different about solving this problem in JavaScript?

// Figuring out syntaxically how JS works, specifically in figuring out whwat methods work for strings, arrays and integers and playing around with that. I think our logic needed to be different for our approach to have actually worked. We tried out a lot of new methods though, and had a somewhat successful for loop going.

// What built-in methods did you find to incorporate in your refactored solution?

// It is nice to see .push and .join, especially since those work basically the same as in Ruby. We also would probably never thought to use a ternary operator, which also functions basically the same way in JS that it does in Ruby. We couldn't figure out exactly how to get the substr function to work, but that's probably because neither of us had used anything like it before.
