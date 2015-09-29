###What does puts do?

`puts` returns nil, but prints the output to the console on a new line.  It is important to not end a method with a puts if you expect it to return an answer for you.

###What is an integer? What is a float?

A integer is a number like 1, 2, 3.  Floats are a numbers with decimal places like 1.0, 1.3, 1.6.  If you set those numbers to be an integer in ruby they would all return 1, however if they are set as floats they will return 1.0, 1.3 and 1.6.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

A quick example for integer divison could be something like 3 / 2. We know that 3 / 2 is actually 1.5.  But for a computer storing the answer as an integer it will be 1.

If we did 3.0 / 2.0  and make it float division the computer would store the answer as 1.5.



### Release 2 - Mini-challenge
```ruby

days = 365
hours = 24
tot = days * hours
puts(tot.to_s + " hours per year.")

years = 10
mins = 60
output = tot * years * mins
puts(output.to_s + " minutes per decade.")

```


###How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles math following a order of operations.  Things like multiplication and division occur first before addition and subtraction.  If things are of equal level in the math operation ruby then checks from left to right.  Best practices involve using parenthesis as they take precedence over most operations and improves readability when doing complex math.

###What is the difference between integers and floats?

Taking my answer from above:
A integer is a number like 1, 2, 3.  Floats are a numbers with decimal places like 1.0, 1.3, 1.6.  If you set those numbers to be an integer in ruby they would all return 1, however if they are set as floats they will return 1.0, 1.3 and 1.6.

###What is the difference between integer and float division?

Taking my answer from above:
A quick example for integer divison could be something like 3 / 2. We know that 3 / 2 is actually 1.5.  But for a computer storing the answer as an integer it will be 1.

If we did 3.0 / 2.0  and make it float division the computer would store the answer as 1.5.

###What are strings? Why and when would you use them?

Strings are words or even numbers!  In ruby we use strings to create text.  It can be confusing at first especially when numbers get involved.  Things like "2" + "2" returning "22" instead of 4 is confusing at first.  But it helps seperate us work with text in general.  There are a lot of functions that can be used on strings that would not be possible on integers.


###What are local variables? Why and when would you use them?

Local variables store information for ruby.  They can be strings, integers, floats or even booleans (and some other cases).  Below I created a example of where variables can be useful:

```ruby


name = "Eric Dell'Aringa"
age = "28"
home = "SF, CA"

p "Hi my name is " + name + " I am " + age + "from " + home + "."


```

If I wanted to edit this program for someone elses name, age or home I would just need to edit the variables to contain their information.  Instead of rewriting the sentance over and over again.


###How was this challenge? Did you get a good review of some of the basics?

This challenge was fun, it was a good review on the basics of ruby.  It helped me get a better understanding of the fundamentals of what ruby is.  