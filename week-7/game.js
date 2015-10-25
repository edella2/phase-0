// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: A guessing game for different names
// Goals:
// Characters: Eric and a Dragon
// Objects: Sword, Shield, Fire extinguisher
// Functions:
/*
 Pseudocode



*/
// Initial Code
function knight (name, level) {
  this.name = name,
  this.level = level,
  this.manaPotion = 2,
  this.alive = true,
  this.block = false,
  this.health = level * 13,
  this.mana = level * 2

  //actions
  this.bash = function (target) {
    this.block = false;
    if (this.mana >= 25) {
      this.mana -= 25;
      target.health -= 150;
      console.log(this.name + " bashes " + target.name);
      if (target.health <= 0) {
        console.log(this.name + " has slain " + target.name);
        target.alive = false;
        }
    } else {
      console.log("Not enough mana");
    }
  }

  this.shield = function() {
    this.block = true;
  },

  this.drinkManaPotion = function() {
    this.block = false;
    console.log(this.name + " drinks a mana potion!");
    if (this.manaPotion > 0) {
      this.mana += 50;
      this.manaPotion -= 1;

    } else {
      console.log("oh no! out of mana potions!");
    }

  }
}




function dragon (name, level) {
  this.name = name,
  this.level = level,
  this.alive = true,
  this.health = level * 25,
  this.mana = level * 9,
  this.lungs = false

  //actions
  this.fireBreath = function (target) {
    if (this.mana >= 40) {

      console.log(this.name + " breathe's out a huge wave of fire at " + target.name + "!")
      this.mana -= 40;

      if (target.block === false) {
        target.health -= 100;

        if (target.health <= 0) {
          console.log(target.name + " is slain!")
          target.alive = false;
        }

      } else {
        console.log(this.name + " breathe's out a huge wave of fire at " + target.name + "! But is blocked by " + target.name)
      }
    }

  }

  this.deepBreath = function () {
    console.log(this.name + "takes a deep breath")
    this.lungs = true;
  }

  this.doNothing = function() {
    console.log(this.name + " does nothing. It's super ineffective!")
  }


}






var eric = new knight ("Eric", 25);
var drago = new dragon ("DRAGON", 25);
console.log(eric.mana);
// console.log(drago.health);
// eric.bash(drago);
// console.log(drago.health);
// eric.bash(drago);
// eric.bash(drago);


while (eric.alive === true && drago.alive === true) {
//   var index = prompt("0: Shield block, /n 1: Drink mana potion /n 2: Bash!")
  var index = Math.floor(Math.random() * 2);
  if (index === 0) {
    eric.bash(drago);
  } else if (index === 1) {
    eric.drinkManaPotion();
  } else if (index === 2) {
    eric.shield();
  }

  var dragIndex = Math.floor(Math.random() * 2);
  if (dragIndex === 0) {
    drago.fireBreath(eric);
  } else if (index === 1) {
    drago.deepBreath();
  } else if (index === 2) {
    drago.doNothing();
  }

}

// Refactored Code





/*
// Reflection
What was the most difficult part of this challenge?

I had a hard time coming up with an idea for the game I wanted to make and to get user input to work.  Each time I tried to create a prompt for users to input a choice I would get an error when I ran the file in my console.  I was fairly certain it was prompt("message") to achieve this, but I may not have been able to test it in terminal.


What did you learn about creating objects and functions that interact with one another?

This was something I was surprised about, it was actually fairly easy to interact with other objects with one another and themselves with different functions.  I created a few that would alter the health and mana of their "targets" and themselves.



Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

One that was fairly useful for testing was using Math.random.  I had trouble getting user input to work and used Math.random with Math.floor to create random choices.

How can you access and manipulate properties of objects?

You can access and manipulate properties of an object similar to how I would approach it in ruby.  With an example of a dog you could create a dog object (or class in ruby), define a function to it such as wagTail and call it outside of the object with the name.wagTail (name being whatever you made for the dog when initializing.)

*/