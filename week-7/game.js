// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: build barricades before zombies come
// Goals: Create 5 barricades, don't encounter zombies
// Characters: Survivor (barricades built, positionZ, positionY), Zombies (positionX, positionY)
// Objects: Survivor, Zombie 1, Zombie 2, Zombie 3
// Functions: Move, build

// Pseudocode
// create survivor object with attributes of position and barricades built
// create zombie objects with position attributes
// create move function which allows player to change position on axes
// create build function, which increases the number of barricades by one
// if barricades == 5, player wins. If zombie position == player position, player gets bitten and dies

// Initial Code
var survivor = {
positionX: 0,
positionY: 0,
barricades: 0,

move: function(where){
  if (where == "up")
  this.positionY += 5;
  else if (where == "down")
    this.positionY -= 5;
  else if (where == "left")
    this.positionX -= 5;
  else if (where == "right")
    this.positionX += 5;
  else if (where == "stay")
    this.positionX += 0;
    
zombieOne.positionX = Math.floor((Math.random()*12)+1)
zombieOne.positionY = Math.floor((Math.random()*12)+1)

zombieTwo.positionX = Math.floor((Math.random()*12)+1)
zombieTwo.positionY = Math.floor((Math.random()*12)+1)

zombieThree.positionX = Math.floor((Math.random()*12)+1)
zombieThree.positionY = Math.floor((Math.random()*12)+1)

console.log("Survivor is at (" + survivor.positionX + "," + survivor.positionY + ")! ε=ε=(っ*´□`)っ" )

console.log("Zombie One is at (" + zombieOne.positionX + "," + zombieOne.positionY + ")! [¬º-°]¬")

console.log("Zombie Two is at (" + zombieTwo.positionX + "," + zombieTwo.positionY + ")! [¬º-°]¬")

console.log("Zombie Three is at (" + zombieThree.positionX + "," + zombieThree.positionY + ")! [¬º-°]¬")

if(survivor.positionX === zombieOne.positionX && survivor.positionY === zombieOne.positionY)
  console.log("Ouch! Zombie One bit you! Game Over (×□×；)");
 
if(survivor.positionX === zombieTwo.positionX && survivor.positionY === zombieTwo.positionY)
  console.log("Ouch! Zombie Two bit you! Game Over (×□×；)");
  
  if(survivor.positionX === zombieThree.positionX && survivor.positionY === zombieThree.positionY)
  console.log("Ouch! Zombie 3 bit you!! Game Over (×□×；)");

},

build: function(){
    this.barricades += 1;
    console.log("Survivor barricades increased by 1 ٩(^ᴗ^)۶")
    
      if(survivor.barricades === 3)
        console.log("You successfully barricaded the building! You are safe! ヽ(^o^)丿")
    }
}

var zombieOne = {
posX: Math.floor((Math.random()*12)+1),
posY: Math.floor((Math.random()*12)+1)
}
var zombieTwo = {
posX: Math.floor((Math.random()*12)+1),
posY: Math.floor((Math.random()*12)+1)
}

var zombieThree = {
posX: Math.floor((Math.random()*12)+1),
posY: Math.floor((Math.random()*12)+1)
}

survivor.build(1)
console.log(survivor.barricades)
survivor.move("up")
survivor.move("right")
survivor.move("down")
survivor.build(1)
survivor.move("right")
survivor.move("right")
survivor.move("up")
survivor.build(1)
console.log(survivor.barricades)



// Refactored Code


var survivor = {
pX: 1,
pY: 1,
barricades: 0,

move: function(where){ //survivor movement
  if (where == "up")
  this.pY += 2;
  
  else if (where == "down")
    this.pY -= 2;
  
  else if (where == "left")
    this.pX -= 2;
  
  else if (where == "right")
    this.pX += 2;
  
  else if (where == "stay")
    this.pX += 0;
// zombie movement    
zombieOne.pX = Math.floor((Math.random()*12)+1)
zombieOne.pY = Math.floor((Math.random()*12)+1)

zombieTwo.pX = Math.floor((Math.random()*12)+1)
zombieTwo.pY = Math.floor((Math.random()*12)+1)

zombieThree.pX = Math.floor((Math.random()*12)+1)
zombieThree.pY = Math.floor((Math.random()*12)+1)

console.log("Survivor is at (" + survivor.pX + "," + survivor.pY + ")! ε=ε=(っ*´□`)っ" )

console.log("Zombie One is at (" + zombieOne.pX + "," + zombieOne.pY + ")! [¬º-°]¬")

console.log("Zombie Two is at (" + zombieTwo.pX + "," + zombieTwo.pY + ")! [¬º-°]¬")

console.log("Zombie Three is at (" + zombieThree.pX + "," + zombieThree.pY + ")! [¬º-°]¬")

if(survivor.pX === zombieOne.pX && survivor.pY === zombieOne.pY)
  console.log("Ouch! Zombie One bit you! Game Over (×□×；)")
 
else if(survivor.pX === zombieTwo.pX && survivor.pY === zombieTwo.pY)
  console.log("Ouch! Zombie Two bit you! Game Over (×□×；)")
  
  else if(survivor.pX === zombieThree.pX && survivor.pY === zombieThree.pY)
  console.log("Ouch! Zombie Three bit you!! Game Over (×□×；)");

},

build: function(){
    this.barricades += 1;
    console.log("Survivor barricades increased by 1 ٩(^ᴗ^)۶")
    
      if(survivor.barricades === 5)
        console.log("You successfully barricaded the building! You won! ヽ(^o^)丿")
    }
}

var zombieOne = {
pX: Math.floor((Math.random()*12)+1),
pY: Math.floor((Math.random()*12)+1)
}
var zombieTwo = {
pX: Math.floor((Math.random()*12)+1),
pY: Math.floor((Math.random()*12)+1)
}

var zombieThree = {
pX: Math.floor((Math.random()*12)+1),
pY: Math.floor((Math.random()*12)+1)
}


// I needed to research .floor and "this" in order to complete my initial solution. I was unable to refactor my solution any more, so I shortened the positionx and positiony variables to make the program look a little neater. I wish I could find a way to loop the zombie movement and test for zombie bite, but any attempts at this were unsuccessful. Also, I am aware I borrowed heavily for the basic concept of the game based on the example, but I hope I was able to change it enough to demonstrate my learning and proficiency with JavaScript.


// Reflection
// What was the most difficult part of this challenge?

// Honestly? Coming up with a game idea. I spent the first two hours trying to make a Shakespearean insult generator, but I couldn't get it to work properly and I was just confusing myself, so I conuslted the provided example for more direction with what my game should be. This is why my game resembes that one so much, because I struggled to think of a game that could be run in JavaScript and I was proficient enough to write myself. For my own game design, I thought about a zombie game. I know that in terms of positioning my game is similar, but that's where I tried to stop my borrowing and demonstrate my own work.

// What did you learn about creating objects and functions that interact with one another?

// I'm seeing them more like Ruby classes now. While they aren't exactly the same, I think it is a helpful metaphor to contextualize what funcitons and objects are doing. I'm getting a better sense of flow control between functions, but I'm sure I could use more practice.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I could not figure out a different way to generate positioning, so I researched the floor method that the example used in order to figure out how it works for myself. Similarly, I did not know a different way than using this. so I researched and implemented that as well. I could not find anything that I could use in my refactor.

// How can you access and manipulate properties of objects?

// I didn't realize that functions can be properties of objects, which really opened things up for me in terms of what I could do with my program. You can access properties within different properties, and change them even outside of the funtion, like I did with my barricades. I think it is cool that you can nest properties and functions, which is something I never experimented with before. You can call properties of objects just like you do methods, and you create them very similarly to how you create methods in classes. Again, not an exact metaphor, but it helps my brain figure out what the different pieces of the code are doing. My JavaScript certainly could use more work, but I feel pretty accomplished, especially concerning my build property of my survivor object.