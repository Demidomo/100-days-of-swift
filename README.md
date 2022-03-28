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
Collections


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
 


2.7 Creating empty collections 

var teams = [String: String]()

teams["Paul"] = "Red" 

// This is an empty dictionary with strings for key and value 


var results = [Int]() 

results[2] = 3

// This is an empty array to store integers

var words = Set<String>() 
var numbers = Set<Int>()
	
	
// empty sets are made with angle brackets instead
// times when you do not know all your data up front, empty collections are great on that


	
2.8 enumerations
	
	
// enums helps to stop user from accidentally using different strings each time 
	
enum Result {
	case succuess
	case failure
}

let result4 = Result.failure
	

enum Directions {

	case north
	case west
	case east 
	case south
	
}

let direction2 = Direction.north
	
// enums are great to store certain values with a definite fixed number of values
// days of the week, months, suite of cards, genres, types of things 
	
	
2.9 Enum associated values 
	
enum Building { case skyscraper(floors: Int) }
	
// THis creates a case called skyscraper, the associated value is floors with an integer type 

enum Sport { case running(distance: Int) }

// this creates a case called running, with distance being its associated value
	
enum Activity { case reading(bookTitle: String) }
	
enum CharacterClass { case paladin(level: Int) }

enum Activity {
    case bored
    case running
    case talking
    case singing
}
	
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}


let talking = Activity.talking(topic: "football")

	
2.10 Enum raw values 

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

	
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
	
// enum case values follow zero count order
// you can assign a value to the first case, and it will add up on its own 
	

	
	
	
	
	
Day 3 operations and conditions
	
		
let age = 21
if age > 18 {
	print("Success")
} else {
	print("Failure")
}
	
	
	
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
	
	
let a = true
let b = false

if a || b {
	print("Hello, Swift!")
}

	
	
let dexterity = 18
print(dexterity >= 18 ? "Success" : "Failure")
	
let strongMagnets = true
print(strongMagnets ? "Success" : "Failure")	
	
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}	

	
let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
	
let yourScore = 20
var highScore = 15
if yourScore >= highScore {
	print("You got the high score!")
}	
	
var age = 18
switch age {
case 0...8:
	fallthrough
case 9..<18:
	print("You're still a minor")
default:
	print("You're an adult")
}	

let phone = "iPhone"
print(phone == "Android" ? "Failure" : "Success")	     


**Day 4** Loops


// for loop: it will loop over arrays and ranges, and each time the loop goes around it will pull out one item and assign to a constant.
	     
	     // one at a time

let albums = ["Funk Wave", "Summer"] 
	     
	     // a constant is made 

for album in albums {
print("\(album) is on Apple Music")
}

print("Players gonna ")
	     
	     
for _ in 1...5 {
    print("play")
}
	

// for loops are generally used with finite sequences: we loop through the numbers 1 through 10, // or through the items in an array,
	     
// while loop: give it a condition to check, and its loop code will go around and around until the condition fails.	
	     
	     // stubborn king: do not stop until...
	     
	     
var number = 1

while number <= 20 {
	print (number) 
	number += 1 
}

print("Ready or not, here I come!")
	
// while loops can loop until any arbitrary condition becomes false, which allows them until we tell them to stop.

//  keep the loop going around until we’re ready to exit.


	     
let colors = ["Red", "Green", "Blue", "Orange", "Yellow"]
var colorCounter = 0 
while colorCounter < 5 {
	print("\(colors[colorCounter]) is a popular color") 
	colorCounter += 1
}
	     

var counter = 2 
while counter < 64 {
	print("\(counter) is a power of 2.")
	counter *= 2 
}

// doesn't matter if the variable is being manipulated by += or -=
// you include its original variable value through the loop first 


Repeat Loops

// repeat loops allow the code to be runned at least once 

var number = 1
	
repeat {
	print(number)
	number += 1
}  while number <= 20 

print ("come thru")



var countdown: Int = 5 
repeat {
	print("\(countdown)...")
	countdown -= 1
} while countdown > 0 
print ("Lift off!") 

// this statement goes thru once it does not meet the while condition above 

var people = 0 
repeat { 
	people += 1
	print(" There's room for one more ! ")
} while people < 40 
print ("no more please") 




var frogs = 4 
repeat {
	for _ in frogs {
	print ("ribbit!") 
	}
} while false 

// this meets the repeat loop until the condition is false 
// the while condition at the end really is a measure on when to stop the repeat loop





Exiting loops 

var countDown = 10 

while countDown >= 0 { 
	print (countDown) 
	countDown -= 1 
} 

print ("Blast off")


// if you wanna launch on 4, we can modify that 


while countDown >= 0 {
	print(countDown) 

	if countDown == 4 {
		print ("I'm bored, let's go") 
		break 
	}


	countDown -= 1 

} 
// everything after break will not happen

Breaking exiting a loop


outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// gotta label the loop

How to continue from loops 

let fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
var position = 0
while position <= 7 {
	let value = fibonacci[position]
	position += 1
	if value < 2 {
	   continue
	}
	print("Fibonacci number \(position) is \(value)")
}


for i in 1...15 {
	let square = i * i
	if i == 8 {
		continue
	}
	print("\(i) squared is \(square)")
}

// although continue is included, it will still continue to loop the for loop statement 



Infinite loops

var counter = 0 

while true {
	print(" ") 
	counter += 1 

	if counter == 273 {
		break
	}
} 

var passengerCount = 0
repeat {
	print("There are \(passengerCount) passengers")
	passengerCount *= 2
} while passengerCount < 10


**Final quiz **

for loop
	for name in ["Taylor"] {
	print("Welcome, \(name)!")
	}	     
	     
	
Repeat Loop  
	var hour = 9
	repeat {
		print("We're open for business.")
		hour += 1
	} while hour < 17
	print("Time to go home!")	     
	     
	     
Break exit loop	     
	outer: for i in 1...10 {
		for j in 1...10 {
			let product = i * j
			print("Product is \(product)")
			break outer
		}
	}	     
	     
for loop	     
	 for _ in 1..<3 {
		print("Happy birthday to you")
	}
	print("Happy birthday dear Taylor")
	print("Happy birthday to you")    
	     
	     
Skipping 

	for i in 1...10 {
		continue
	}	     
	     
	     
**Day 5 
**




func printHelp () {
	let message = """

go go get some

what's good 
let's go
"""

	print(message) 
}

printHelp ()


func showHelp () {
	print("Welcome to Kobi")
	print("Click the button to start")
}
showHelp()







// accepting parameters 
			

func square (number:Int) {
	print (number*number)
}

square(number:6)



func count(to: Int) {
	for i in 1...to {
		print("I'm counting: \(i)")
	}
}



func square(numbers: [Int]) {
	for number in numbers {
		let squared = number * number
		print("\(number) squared is \(squared).")
	}
}
square(numbers: [2, 3, 4])




Return data
			


func square(number: Int) -> Int {
    return number * number
}


func writeToLog(message: String) -> Bool {
	if message != "" {
		print("Log: \(message)")
		return true
	} else {
		return false
	}
}



// make sure the --> variable type matches the return value 


func countMultiplesOf10(numbers: [Int]) -> Int {
	var result = 0
	for number in numbers {
		if number % 10 == 0 {
			result += 1
		}
	}
	return result
}
countMultiplesOf10(numbers: [5, 10, 15, 20, 25])



func isEveryoneAdult(ages: [Int]) -> Bool {
	for age in ages {
		if age < 18 {
			return false
		}
	}
	return true
}
isEveryoneAdult(ages: [10, 20, 16, 24])



// Omit labels for parameters
			   

func greet(_ person: String) {
    print("Hello, \(person)!")
}



// Default Parameter
			   
			   
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}


greet("Taylor")
greet("Taylor", nicely: false)




func calculateWages(payBand: Int, isOvertime: Bool = false) -> Int {
	var pay = 10_000 * payBand
	if isOvertime {
		pay *= 2
	}
	return pay
}
calculateWages(payBand: 5, isOvertime: true)


func scoreGoal(overheadKick: Bool = false) {
	if overheadKick {
		print("Wow - amazing!")
	} else {
		print("Great goal!")
	}
}
scoreGoal(overheadKick: true)





// Variadic functions

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)


func play(games: String...) {
	for game in games {
		print("Let's play \(game)!")
	}
}
play(games: "Chess")



// throwing functions



enum PizzaErrors: Error {
	case hasPineapple
}
func makePizza(type: String) throws {
	if type != "Hawaiian" {
		print("Your pizza will be ready in 10 minutes.")
	} else {
		throw PizzaErrors.hasPineapple
	}
}



enum CatProblems: Error {
	case notACat
	case unfriendly
}
func strokeCat(_ name: String) throws {
	if name == "Mr Bitey" {
		throw CatProblems.unfriendly
	} else if name == "Lassie" {
		throw CatProblems.notACat
	} else {
		print("You stroked \(name).")
	}
}


enum ReadingErrors: Error {
	case tooBoring
}
func readBook(isFiction: Bool = true) throws {
	if isFiction {
		print("Story time!")
	} else {
		throw ReadingErrors.tooBoring
	}
}








	     
// Inout parameter

func doubleInPlace(number: inout Int) {
    number *= 2
}	

var myNum = 10 
doubleInPlace(number: &myNum)

// too lazy to change the parameter, expecting the parameter to be altered in the functions 
























     
	
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
