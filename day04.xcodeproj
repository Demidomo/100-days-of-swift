Day 4 Loops

// for loop: it will loop over arrays and ranges, and each time the loop goes around it will pull out one item and assign to a constant.

     // one at a time
let albums = ["Funk Wave", "Summer"]

     // a constant is made 
for album in albums { print("(album) is on Apple Music") }

print("Players gonna ")

for _ in 1...5 { print("play") }

// for loops are generally used with finite sequences: we loop through the numbers 1 through 10, // or through the items in an array,

// while loop: give it a condition to check, and its loop code will go around and around until the condition fails.

     // stubborn king: do not stop until...
var number = 1

while number <= 20 { print (number) number += 1 }

print("Ready or not, here I come!")

// while loops can loop until any arbitrary condition becomes false, which allows them until we tell them to stop.

// keep the loop going around until we’re ready to exit.

let colors = ["Red", "Green", "Blue", "Orange", "Yellow"] var colorCounter = 0 while colorCounter < 5 { print("(colors[colorCounter]) is a popular color") colorCounter += 1 }

var counter = 2 while counter < 64 { print("(counter) is a power of 2.") counter *= 2 }

// doesn't matter if the variable is being manipulated by += or -= // you include its original variable value through the loop first

Repeat Loops

// repeat loops allow the code to be runned at least once

var number = 1

repeat { print(number) number += 1 } while number <= 20

print ("come thru")

var countdown: Int = 5 repeat { print("(countdown)...") countdown -= 1 } while countdown > 0 print ("Lift off!")

// this statement goes thru once it does not meet the while condition above

var people = 0 repeat { people += 1 print(" There's room for one more ! ") } while people < 40 print ("no more please")

var frogs = 4 repeat { for _ in frogs { print ("ribbit!") } } while false

// this meets the repeat loop until the condition is false // the while condition at the end really is a measure on when to stop the repeat loop

Exiting loops

var countDown = 10

while countDown >= 0 { print (countDown) countDown -= 1 }

print ("Blast off")

// if you wanna launch on 4, we can modify that

while countDown >= 0 { print(countDown)

if countDown == 4 {
	print ("I'm bored, let's go") 
	break 
}


countDown -= 1 
} // everything after break will not happen

Breaking exiting a loop

outerLoop: for i in 1...10 { for j in 1...10 { let product = i * j print ("(i) * (j) is (product)")

    if product == 50 {
        print("It's a bullseye!")
        break outerLoop
    }
}
}

// gotta label the loop

How to continue from loops

let fibonacci = [1, 1, 2, 3, 5, 8, 13, 21] var position = 0 while position <= 7 { let value = fibonacci[position] position += 1 if value < 2 { continue } print("Fibonacci number (position) is (value)") }

for i in 1...15 { let square = i * i if i == 8 { continue } print("(i) squared is (square)") }

// although continue is included, it will still continue to loop the for loop statement

Infinite loops

var counter = 0

while true { print(" ") counter += 1

if counter == 273 {
	break
}
}

var passengerCount = 0 repeat { print("There are (passengerCount) passengers") passengerCount *= 2 } while passengerCount < 10

**Final quiz **

for loop for name in ["Taylor"] { print("Welcome, (name)!") }

Repeat Loop
var hour = 9 repeat { print("We're open for business.") hour += 1 } while hour < 17 print("Time to go home!")

Break exit loop
outer: for i in 1...10 { for j in 1...10 { let product = i * j print("Product is (product)") break outer } }

for loop
for _ in 1..<3 { print("Happy birthday to you") } print("Happy birthday dear Taylor") print("Happy birthday to you")

Skipping

for i in 1...10 {
	continue
}	     
