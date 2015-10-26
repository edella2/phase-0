// USER STORIES

//SUM
/*
Pseudocode:
define a function that takes an array as an argument
declare a variable sum and set it to 0.
Iterate through the array
WHILE
  add the value of the current index to the sum.
END
return the sum
*/

// As a user, I want to be able to sum parts, or the whole of an array

// As a user I want to be able to sum an array that has an odd length


// As a user I want to be able to sum an array that has an even length

// Initial Code:
/*
function sum(array) {
  var sum = 0;
  for (var i=0; i < array.length; i++) {
    sum += array[i];
  }
  return sum
}
*/
// Refactored Code:
function sum(array) {
  var sum = 0;
  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  }
  return sum
}


//AVERAGE
/*
Pseudocode:
define a function that takes an array as an argument
declare a variable sum and set it to 0
Iterate through the array
WHILE
  add the value of the current index to the sum.
END
return the sum divided by the length of the array
*/

// As a user, I want to be able to get the average of all the elements in an array


// As a user I want to be able to get the average of an array that has an odd length



// As a user I want to be able to get the average of an array that has an even length
// Initial Code:
/*
function average(array) {
  var sum_of_array = sum(array);
  return sum_of_array/array.length;
}
*/
// Refactored Code:
function mean(array) {
  return sum(array) / array.length;
}

//MEDIAN

/*
Pseudocode:
define a function that takes an array as an argument
sort the array
declare a variable at the middle index and floor it
IF odd length
  return the array at the middle index
ELSE
  return the array at the middle index plus the array at the middle index minus 1 and divide that by 2
END
*/

// As a user, I want to be able to find the median of all the elements in an array

// As a user I want to be able to find the median of an array that has an odd length


// As a user I want to be able to find the median of an array that has an even length
// Initial Code
/*
function median(array) {
  var len = array.length;
  array.sort();
  if (len % 2 == 0) {
    console.log(array);
    return average([array[len/2-1], array[len/2]]);
  } else {
    return array[Math.floor(array.length/2)];
  }
}
*/
// Refactored Code

function median(array) {
  var len = array.length;
  array.sort();
  if (len % 2 == 0) {
    return mean([array[len / 2 - 1], array[len / 2]]);
  } else {
    return array[Math.floor(array.length / 2)];
  }
}

//__________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)
