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


// Reflection