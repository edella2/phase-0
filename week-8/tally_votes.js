// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}
/*
// Pseudocode
TALLY votes
writing a for loop that iterate through each key in votes
if each key in votes also has a key then
set a variable obj = to votes.key
for each prop in obj
access voteCount.object and increment by 1
probably have to initialize objects to 0


Assign Officer

set highest value variable
set highest name variable 
iterate through vote count
if current value is higher than highest value set highest value to current value
set hightest name to current name
set office equal to highest name



*/
// __________________________________________
// Initial Solution


// for (var key in votes) {
//   for (var prop in votes[key]) {
//     if (voteCount[prop][votes[key][prop]] === undefined) { 
//       voteCount[prop][votes[key][prop]] = 1;
//     } else {
//       voteCount[prop][votes[key][prop]] += 1;
//     }  
//   }
// }





// for (var office in voteCount) {
//   var highestValue = 0;
//   var highestName = "";
//   for (var name in voteCount[office]) {
//     if (voteCount[office][name] > highestValue) {
//       highestValue = voteCount[office][name];
//       highestName = name;  
//     }
//   }
//   officers[office] = highestName;
// }




// __________________________________________
// Refactored Solution

/* We were unable to come up with anyting in our code that we thought was redundant or not necessary.  We spent time looking online for ways to refine our code more but couldn't come up with anything. */

for (var key in votes) {
  for (var prop in votes[key]) {
    if (voteCount[prop][votes[key][prop]] === undefined) { 
      voteCount[prop][votes[key][prop]] = 1;
    } else {
      voteCount[prop][votes[key][prop]] += 1;
    }  
  }
}

for (var office in voteCount) {
  var highestValue = 0;
  var highestName = "";
  for (var name in voteCount[office]) {
    if (voteCount[office][name] > highestValue) {
      highestValue = voteCount[office][name];
      highestName = name;  
    }
  }
  officers[office] = highestName;
}




// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?

Iterating over nested objects in JavaScript seemed fairly similar to iterating over nested hashes in Ruby.  We had some issues with our code and found it made more sense to use bracket notation when finding things like votes[key][prop] to set as the name for the office being voted in.  It felt more natural that if we were not using dot notation for the object on all areas that it looked cleaner using brackets even if not necessary.

Were you able to find useful methods to help you with this?

The for..in.. looping was key for this assignment.  It seemed to work in a similar fashion to doing .each in ruby for hashes.

What concepts were solidified in the process of working through this challenge?

Looping through javaScript objects makes more sense now.  It flows in a very similar way to doing .each with ruby hashes.  The syntax was tricky to learn at first, but after using it for a bit everything started to feel natural and similar to what we learned with Ruby.


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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)