/*
Gradebook from Names and Scores
I worked on this challenge with: Eric Dell'Aringa/Celeste Carter
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]




// __________________________________________
// Write your code below.

/*

var gradebook = {}

for (var names in students) {
  gradebook[students[names]] = {};
  gradebook[students[names]]["testScores"] = scores[names];
}


gradebook.addScore = function(name, grade) {
  this[name]["testScores"].push(grade);
}

gradebook.getAverage = function(name) {
  return average(this[name]["testScores"]);
}

function average(array) {
  var sum = 0;
  for(var i = 0; i < array.length; i++) {
    sum += array[i];
  }
  return sum / array.length;
} 
console.log(gradebook);

*/

// __________________________________________
// Refactored Solution

var gradebook = {}

for (var names in students) {
  gradebook[students[names]] = {};
  gradebook[students[names]]["testScores"] = scores[names];
}


gradebook.addScore = function(name, grade) {
  this[name]["testScores"].push(grade);
}

gradebook.getAverage = function(name) {
  return average(this[name]["testScores"]);
}

function average(array) {
  var sum = 0;
  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  }
  return sum / array.length;
} 
console.log(gradebook);




// __________________________________________
// Reflect
/*


What did you learn about adding functions to objects?

Adding functions to objects can be done outside of the object using dot or bracket notation.  I found this very helpful that instead of adding it directly in the empty object I created above we were able to just create a function property using dot notation.

How did you iterate over nested arrays in JavaScript?

We iterated over nested arrays using for..in.. loops.  I had already done assignment 8.3 before this one so I was a little familiar and more prepared when approaching this problem.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?

When trying to "push" a grade into the gradebook[name]["testScores"] array I wasn't able to use '<< grade' instead I had to use .push(grade).  This was something I didn't find very intuitive and had I not been confident our code should work the first time I would have tried to approach the problem in a completely different way.  I feel more comfortable after this assignment with JS syntax which I feel like I still have some trouble with.

*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)