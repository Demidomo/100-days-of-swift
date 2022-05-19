
Day 2 Collections

2.1 arrays

// Arrays are a collection of values stored as 1 value

let fairview = "north york" let eaton = "toronto" let markville = "markham" let metrotown = "burnaby"

let malls = [fairview, eaton, markville, metrotown]

malls [1] // 1 represents the array position count from 0 // Swift's array are zero-based // Swift will not accept array position count outside of the counts in an array // Arrays can be made into specific variable types: string, bool, int, double

var cities: [string] = ["London", "Paris", "NYC"] // Arrays can also be annotated as a specific type similar to a variable

var readings: [bool] = [false, true, false, false]

2.2 sets

// values in a set cannot be read by using numerical count positions like arrays // ^ they are stored in random orders, because of fast retrieval of its items

let colors = Set(["red", "blue", "yellow"])

// items in sets also cannot duplicate // all items in a set are unique

2.3 tuples

var name = (first: "Axel", last: Rose")

// tuples allows to store several values toegther // they are fixed in size // you can change the item value, but not the type of item

var website = (name: "Apple", url: "www.apple.com")

// tuples are gerat at several values in one variable // they also work as a constant in keeping a fixed set of items in the tuple

website.name website.url

// tuples can work better than arrays when we recall items

var website = ["Apple", "Website"] website[0] website[1]

// they are specific and easily named compare to arrays

var person = (name: "Paul", age: 35, isEmployed: false)

// tuples works great in containing multiple types of variables // this tuple example is able to contain a string, integer, and a boolean value // tuples are allowed duplicate values

2.4 array, set, tuple summary

let beachBoys = ["Brian Wilson", "Mike Love", "Al Jardain"]

beachBoys[2]

// array is stored in [ ] // if you need duplicate values, and the order matters, array is great // Array examples: video game highscore, to do list, chat messages, weather forcast, poem, // Array examples: song playlist, height measurement/progression chart

let set = (["porcupine", "Pilot", "Perry"])

// sets are stored in ([ ]) // items in sets are in random order + never duplicates // so they can be recalled faster // Set example: Word dictionary, Articles read by user, scrabble words, all twitter accounts

let address = (number: 235, street: "Tamberlain Road", city: "Fresno")

address.number address.street address.city

// tuples are stored in ( ) // tuples can store different types of items, but the types cannot be altered // tuples have a fixed set of items // tuple example: knowing a value holds specific types (data has 2 string, 3 int values)

2.5 Dictionary

let weights = [

"Carl Jung": 156, "Doug Ford": 235 ]

// dictionary starts and end with [ ] // dictionary allows values to be stored inside an item // if dictionary is a basket of kinder surprise eggs // each egg is the key // stored inside the egg is a toy, which is the data stored in a key // if you want to read the data of one of the keys inside a dictionary:

weight["Carl Jung"]

// you would refer to the dictionary with the corrosponding key // rather than referring to by the index value count, we can use the key for convenient // when the index count of a dictionary is big enough, it's easier done this way

var roles = [ "captain": "Mal" "Engineer": "Rose" ]

// here the dictionary has string for the keys and string for values

2.6 dictionarty default values

let favoriteIceCream = [ "Paul": "Chocolate" "Sergei": "Vanilla" ]

// We can read existing values like this

favoriteIceCream["Paul"]

// but if we insert a key that does not exist in the dictionary it will come up as nil

favoriteIceCream["Joan"]

// so to not return a nil value, we can anticipate it by adding a default value fror this key

favoriteIceCream["Joan", default: "Dunno"]

// this way it will return as "Dunno" rather than nil

let results = [

"Math": 100, "history": 53, "Geography": 53

]

// in this example, if science test was not taken we can use a default value

let scienceResults = results["science", default: 0]

// be careful not to confuse a dictionary with an array. Dictionary will have keys

2.7 Creating empty collections

var teams = String: String

teams["Paul"] = "Red"

// This is an empty dictionary with strings for key and value

var results = Int

results[2] = 3

// This is an empty array to store integers

var words = Set() var numbers = Set()

// empty sets are made with angle brackets instead // times when you do not know all your data up front, empty collections are great on that

2.8 enumerations

// enums helps to stop user from accidentally using different strings each time

enum Result { case succuess case failure }

let result4 = Result.failure

enum Directions {

case north
case west
case east 
case south
}

let direction2 = Direction.north

// enums are great to store certain values with a definite fixed number of values // days of the week, months, suite of cards, genres, types of things

2.9 Enum associated values

enum Building { case skyscraper(floors: Int) }

// THis creates a case called skyscraper, the associated value is floors with an integer type

enum Sport { case running(distance: Int) }

// this creates a case called running, with distance being its associated value

enum Activity { case reading(bookTitle: String) }

enum CharacterClass { case paladin(level: Int) }

enum Activity { case bored case running case talking case singing }

enum Activity { case bored case running(destination: String) case talking(topic: String) case singing(volume: Int) }

let talking = Activity.talking(topic: "football")

2.10 Enum raw values

enum Planet: Int { case mercury case venus case earth case mars }

let earth = Planet(rawValue: 2)

enum Planet: Int { case mercury = 1 case venus case earth case mars }

// enum case values follow zero count order // you can assign a value to the first case, and it will add up on its own
