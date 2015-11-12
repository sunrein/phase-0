// Bulk Up
/*
Create a function that takes an array of athletes that include a name and event property. (Sarah Hughes (Links to an external site.), for example, could have "Ladies' Singles" as her event). Your function should add a  win property to each athlete in the array. In the example above,  win would print "Sarah Hughes won the Ladies' Singles!"
*/


// function addWin(myarray){
//   for (var i in myarray){
//     myarray[i].win = myarray[i].name + " won the " + myarray[i].event + "!";
//   }
//   return myarray;
// }


// Jumble your words

// Create a function that accepts a string as an argument and reverses it. Use the built-in JavaScript methods for strings and arrays to accomplish this. See the MDN String (Links to an external site.) and Array (Links to an external site.) docs. HINT: Think about how you would write this in Ruby and translate!

// Pseudocode:

// function accepts string as argument
// convert string to array
// use array.reverse method
// convert back to string

// function stringReverse(string){
//   var reverseArray = string.split("");
//   reverseArray.reverse();
//   return  reverseArray.join("");

// }
// console.log(stringReverse("!sdrow ruoy elbmuJ"));


// 2,4,6,8

/*function isBigEnough(value) {
  return value >= 10;
}
var filtered = [12, 5, 8, 130, 44].filter(isBigEnough);
// filtered is [12, 130, 44]
*/

var myarray = [1,2,3,4,5,6,7];

// function makeEvens(array){


 function evens(value) {
   return value % 2 == 0;
  
 }
// }
var filtered = myarray.filter(evens);

console.log(filtered);




/* original solution
var myarray = [1,2,3,4,5,6,7];


 function evens(value) {
   return value % 2 == 0;
  
 }

var filtered = myarray.filter(evens);
console.log(filtered);
*/

// "We built this city"


function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// A lot of things. I'm still getting used to functions over methods, and syntax stuff. I feel like those things were definitely solidified, but I could use more practice.

// What are constructor functions?

// Constructor functions are sort of like classes. You initialize a bunch of properties for an object and you can do things to that object.

// How are constructors different from Ruby classes (in your research)?

// I didn't do a lot of research on this topic, so I'm not sure quite exactly how they differ from Ruby classes. However, you don't need to define a bunch of different methods/functions within the function, like you need to define methods within a class in order to make that class do things. However, the above constructor function isn't doing a whole lot right now, so it is difficult to see how exactly it differs from a class.