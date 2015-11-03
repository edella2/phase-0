// Reverse Words


// I worked on this challenge [by myself, with: ].
//This challenge took me [#] hours.

// Pseudocode
/*
define a function that takes in a sentance as an argument.

return the same sentance with the words reversed.

split the sentance into an array by  each of the words

ITERATE through the array
  reverse each word in the array
END

join the array and include a space and return it.


*/


// Initial Solution
/*
function reverse_sentance(sentance) {
  var output = [];
  output = sentance.split(" ").reverse();
  for (var i = 0; i < output.length; i++) {
    output[i] = output[i].split("").reverse().join("");
  }
  return output.join(" ");

}

*/

// Refactored Solution
function reverse_sentance(sentance) {
  var output = sentance.split(" ").reverse();
  for (var idx in output) {
    output[idx] = output[idx].split("").reverse().join("");
  }
  return output.join(" ");

}


// Driver code
console.log(reverse_sentance(""));

console.log(reverse_sentance("Oneword"));

console.log(reverse_sentance("Put me in reverse"));

// Reflection
/*
What concepts did you solidify in working on this challenge?

working with strings in JS was improved with this challenge.

What was the most difficult part of this challenge?

Reversing the order of the words was easy.  The challenging part was reversing each word.  I had not realized, but the .reverse only works for the order of an array and not for the order of a string.

Did you solve the problem in a new way this time?

I did yes,  I had to approach the problem in a completely different way as .reverse did not work on strings.  I had to split the strings and put them into an array and then reverse and join that array in the new order to flip the words.

Was your pseudocode different from the Ruby version?

My pseudocode was similar to my ruby version.  The approach was the same but the way I could use that approach using functions in JS was way different.  Iterating through the arrays and reversing each word was completely different.

What was the same and what was different?

The approach was fairly the same, but the methods that I used to accomplish this were very different.

*/