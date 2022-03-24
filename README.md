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

**Day 2**


2.1 arrays 

// Arrays are a collection of values stored as 1 value 


let fairview = "north york" 
let eaton = "toronto" 
let markville = "markham" 
let metrotown = "burnaby" 

let malls = [fairview, eaton, markville, metrotown] 

malls [1] 
// 1 represents the array position count from 0 
// Swift's array are zero-based 
// Swift will not accept array position count outside of the counts in an array 
// Arrays can be made into specific variable types: string, bool, int, double

var cities: [string] = ["London", "Paris", "NYC"]
// Arrays can also be annotated as a specific type similar to a variable 

 var readings: [bool] = [false, true, false, false]
 
 
 2.2 sets 

// values in a set cannot be read by using numerical count positions like arrays 
// ^ they are stored in random orders, because of fast retrieval of its items 

let colors = Set(["red", "blue", "yellow"]) 

// items in sets also cannot duplicate
// all items in a set are unique 


2.3 tuples 


var name = (first: "Axel", last: Rose") 

// tuples allows to store several values toegther 
// they are fixed in size 
// you can change the item value, but not the type of item 

var website = (name: "Apple", url: "www.apple.com") 

// tuples are gerat at several values in one variable 
// they also work as a constant in keeping a fixed set of items in the tuple 

website.name 
website.url 

// tuples can work better than arrays when we recall items 

var website = ["Apple", "Website"]
website[0]
website[1]

// they are specific and easily named compare to arrays 


var person = (name: "Paul", age: 35, isEmployed: false) 

// tuples works great in containing multiple types of variables 
// this tuple example is able to contain a string, integer, and a boolean value 
// tuples are allowed duplicate values 
 
 
 
 2.4 array, set, tuple summary 
 
 let beachBoys = ["Brian Wilson", "Mike Love", "Al Jardain"] 
 
 beachBoys[2]
 
// array is stored in [ ] 
// if you need duplicate values, and the order matters, array is great 
// Array examples: video game highscore, to do list, chat messages, weather forcast, poem, 
// Array examples: song playlist, height measurement/progression chart 

let set = (["porcupine", "Pilot", "Perry"]) 

// sets are stored in ([ ]) 
// items in sets are in random order + never duplicates
// so they can be recalled faster
// Set example: Word dictionary, Articles read by user, scrabble words, all twitter accounts


let address = (number: 235, street: "Tamberlain Road", city: "Fresno")

address.number
address.street
address.city 

// tuples are stored in ( ) 
// tuples can store different types of items, but the types cannot be altered
// tuples have a fixed set of items 
// tuple example: knowing a value holds specific types (data has 2 string, 3 int values)


2.5 Dictionary 

let weights = [

"Carl Jung": 156, 
"Doug Ford": 235 
]

// dictionary starts and end with [ ] 
// dictionary allows values to be stored inside an item
// if dictionary is a basket of kinder surprise eggs 
// each egg is the key
// stored inside the egg is a toy, which is the data stored in a key 
// if you want to read the data of one of the keys inside a dictionary: 

weight["Carl Jung"] 

// you would refer to the dictionary with the corrosponding key 
// rather than referring to by the index value count, we can use the key for convenient 
// when the index count of a dictionary is big enough, it's easier done this way 
 
 var roles = [
"captain": "Mal" 
"Engineer": "Rose" 
]

// here the dictionary has string for the keys and string for values 


2.6 dictionarty default values 

let favoriteIceCream = [
"Paul": "Chocolate" 
"Sergei": "Vanilla" 
]

// We can read existing values like this 

favoriteIceCream["Paul"]

// but if we insert a key that does not exist in the dictionary it will come up as nil

favoriteIceCream["Joan"]

// so to not return a nil value, we can anticipate it by adding a default value fror this key 

favoriteIceCream["Joan", default: "Dunno"]

// this way it will return as "Dunno" rather than nil 

let results = [

"Math": 100, 
"history": 53,
"Geography": 53

]

// in this example, if science test was not taken we can use a default value 

let scienceResults = results["science", default: 0] 
 
 
 // be careful not to confuse a dictionary with an array. Dictionary will have keys 
 









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
