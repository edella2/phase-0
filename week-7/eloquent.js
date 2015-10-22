
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var something = "A string";
console.log(something + " expression");

// var favorite = prompt("What is your favorite food?");
// console.log(favorite + " is my favorite food too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for(var i = 0; i <= 100; i++) {
  if (i % 3 ==0 && i % 5 != 0) {
    console.log("Fizz");
  }
  else if (i % 3 != 0 && i % 5 == 0) {
    console.log("Buzz");
  }
  else if (i % 3 == 0 && i % 5 == 0) {
    console.log("FizzBuzz");
  }
  else {
    console.log(i);
  }

}


// Functions

// Complete the `minimum` exercise.
function min(arg1,arg2) {
  if (arg1 <= arg2) {
    return arg1;
  }
  else {
    return arg2;
  }
}

console.log(min(0, 10));

console.log(min(0, -10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Eric",
  age: 29,
  fav_foods: ["Pizza", "Burger", "Cookies"],
  quirk: "I am really into competive video games."
}

console.log(me)