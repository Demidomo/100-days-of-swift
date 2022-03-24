# First-12-days-

**Day 1**

1.1 strings

// variables contain values, and those values can be changed freely
// The process of storing data in memory, holding on to something the user typed, or 
// something you downloaded from the net, this is where variables can be used. 

var str = "Hello, playground"

// str is the name of the variable
// this variable contains the text within " " as its value 
// var declares it as a variable 

str = "Goodbye" 

// this time the variable str has a different value 


var favoriteShow = "The Wire" 

// Create a new variable called favoriteShow
// Give it the value The Wire 


favoriteShow = "The Next Generation" 


// here the existing value is modified rather than creating a new variable
// it would be weird to create a variable every line called favoriteShow x 3

favoriteShow = "Fargo" 

// if you are modifying an existing variable, remove the var 
// if you wanna make a new variable, declare var and name it something else

// variables are best avoided?!

1.1T 

var operatingSystem = "macOS" 
// this creates a variable called operatingSystem, which contains the value "macOS"
// it is a string type 




1.2 integers


// strings are contained in " "
// integers do not need " " 


var allStarTrekMovies = 13

// this variable has been assigned the type as an integer
// from now this variable name will always be an integer

// this is what makes swift a type-safe language


1.3 multi-line string 

var str1 = """
This goes 
over multiple 
lines
"""

// each of the """ must be on their own line 
// this string will appear with 3 lines 




1.4 doubles and boolean

var pi = 3.1415926 

// this creates a double type variable called pi 

var learning = true 

// this variable holds a boolean type, and the value is true 


// Doubles can hold decimal values 
// Swift does not allow you switching types in its calculations 


1.5 string interpolation

var score = 85 
var str = "your score was \(score)"

// This \(variable) injects the variabel value into another variable 
// In this example an int variable called score is inserted into the variable called str 

https://www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5-0

//  in real apps having this inserted dynamically is important 
// because it lets us show real-world user data rather than things we typed ourselves.



1.6 constants 

// once declared, you cannot change the value of a constant 
// constants are declared with a let statement 


let brita = "water filter" 

// constants are a great alternative if you do not wish to change a variable's value 
// “this value matters, don’t let me change it no matter what I do.”
// you’re asking Swift to make sure the value never changes, 
// which is another thing you no longer need to worry about.



1.7 type annotation 

// using let statments to declare a type of variable 

let album: String = "White Album" 
let year: Int = "1968" 
let sale: Double = 12_000_000
let Beatles: Bool = true


var percentage: Double = 66 

// annotations help with creating a double variable without 
// having to write decimal points everywhere

var name: String 

// You can declare a type of variable without giving it a value yet 
// annotations help make variable types more explicit 
// without annotations, you will be using type inference



**Day 6** 
*Create basic closure* 

let driving = {
    print("I'm driving in my car")
}

driving () 


var connectVPN = {
	print("Connected!")
}
connectVPN()
