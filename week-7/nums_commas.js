// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

/*
// Pseudocode

define a function called seperateComma that takes an integer as an argument.

Output: A string that is the same integer separated by commas.

Steps:
1. convert the integer to a string.
2. split the string into an array

WHILE  array.length
  IF index % 4 === 0
    push comma into array
  END
  index + 1

END

join array
console.log(array)


*/
// Initial Solution

var separateComma = function(num){
var output = num.toString();
output = output.split('').reverse();

for(var i = 0; i < output.length; i++ ) {
  if (i % 4 == 0) {
    output.splice(i , 0,  ",");

  }


}

output = output.reverse().join('')
var newStr = output.substring(0, output.length - 1);

console.log(newStr);

}




// Refactored Solution


function separateComma(num) {
var output = num.toString().split('').reverse();

for(var i = 0; i < output.length; i++ ) {
  if (i % 4 == 0) {
    output.splice(i , 0,  ",");
    }
  }
output = output.reverse().join('').substring(0, output.length - 1);

console.log(output);

return output;

}


// Driver Code

separateComma(123456789);

separateComma(123);

separateComma(1234);

separateComma(12345);

separateComma(12);


// Your Own Tests (OPTIONAL)
// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;
// }

// assert(
//   (separateComma(123) instanceof String),
//   "Test",
//   "0"
//   )


// assert(
//   (separateComma(123456789) === "123,456,789"),
//   "The number should be, '123,456,789'",
//   "1. "
// )

/*
// Reflection

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

I wasn't able to use the each_slice enumerable like I would use with Ruby.  However, I was able to approach the problem in a fairly similar way to my initial solution with Ruby.  For this attempt I wanted to try to write the code without pushing values into a new array. And instead used functions I hadn't had the chance to use before like splice.

What did you learn about iterating over arrays in JavaScript?

Iterating through arrays in JavaScript is fairly similar to ruby.  However, Ruby has several enumerables that help solve these problems like #each_slice(n).

What was different about solving this problem in JavaScript?

Not having (or being able to find) enumerables that would help me iterate through an array in a way I wanted.

What built-in methods did you find to incorporate in your refactored solution?

This wasn't in our refactored solution, however my partner introduced me to a function called substring that extracted a character from our string.  We were having an issue with a "," being inserted at the beginning of our if statement because of how we were accessing it with our IF statement. Our if statement was doing a modulus of 0 % 4, so our first index always had a "," inserted even though it wasn't necessary. Substring made it possible for us to target that first comma and remove it from our string.

*/