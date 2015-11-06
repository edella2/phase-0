// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('body h1').first().css({
	'color': 'red',
	'border': 'black solid',
	'visibility': 'visible'
})

$('div h1').html('Copperheads!')

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://cliparts101.com/files/542/6FE4B7B19AAE64C79BE127D469D565E7/Copperhead__brownscale.png')

    $('img').on('mouseleave', function() {
    	$(this).attr('src', 'imgs/dbc_logo.png')
    })
  })



//RELEASE 5: Experiment on your own






})  // end of the document.ready function: do not remove or write DOM manipulation below this.


/*
REFLECTIONS
What is jQuery?

jQuery is a JavaScript library that allows editing of of events animations and other things in a much simpler way.

What does jQuery do for you?

Simplifies how we have JavaScript interact with a page.  It is a library of useful functions.

What did you learn about the DOM while working on this challenge?

Accessing specific html tags was trickier especially when they were nested a few levels in.

*/

