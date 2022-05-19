Day 6 Create basic closure

let driving = { print("I'm driving in my car") }

driving ()

var connectVPN = { print("Connected!") } connectVPN()

let greetUser = { print("Hi there!") } greetUser()

Parameters

let driving = { (place: String) in print("I'm going to (place) in my car") }

driving("London")

var cleanRoom = { (name: String) in print("I'm cleaning the (name).") } cleanRoom("kitchen")

var sendMessage = { (message: String) in if message != "" { print("Sending to Twitter: (message)") } else { print("Your message was empty.") } }

let rowBoat = { (distance: Int) in for _ in 1...distance { print("I'm rowing 1km.") } } rowBoat(5)

Return a value

let drivingWithReturn = { (place: String) -> String in return "I'm going to (place) in my car" }

let message = drivingWithReturn("London") print(message)

var flyDrone = { (hasPermit: Bool) -> Bool in if hasPermit { print("Let's find somewhere safe!") return true } print("That's against the law.") return false }

let measureSize = { (inches: Int) -> String in switch inches { case 0...26: return "XS" case 27...30: return "S" case 31...34: return "M" case 35...38: return "L" default: return "XL" } } measureSize(36)

var difficultyRating = { (trick: String) -> Int in if trick == "ollie" { return 1 } else if trick == "Yoyo Plant" { return 3 } else if trick == "900" { return 5 } else { return 0 } } print(difficultyRating("ollie"))

let bakeBirthdayCake = { (name: String) -> Int in print("I've made a cake for (name); here's the bill.") return 50 }

**Closure as a Parameter **

func travel(action: () -> Void) { print("I'm getting ready to go.") action() print("I arrived!") }

travel(action: driving)

let awesomeTalk = { print("Here's a great talk!") } func deliverTalk(name: String, type: () -> Void) { print("My talk is called (name)") type() } deliverTalk(name: "My Awesome Talk", type: awesomeTalk)

let swanDive = { print("SWAN DIVE!") } func performDive(type dive: () -> Void) { print("I'm climbing up to the top") dive() } performDive(type: swanDive)

let helicopterTravel = { print("Get to the chopper!") } func travel(by travelMeans: () -> Void) { print("Let's go on vacation...") travelMeans() } travel(by: helicopterTravel)

var payCash = { print("Here's the money.") } func buyClothes(item: String, using payment: () -> Void) { print("I'll take this (item).") payment() } buyClothes(item: "jacket", using: payCash)

var payCash = { print("Here's the money.") } func buyClothes(item: String, using payment: () -> Void) { print("I'll take this (item).") payment() } buyClothes(item: "jacket", using: payCash)

Trailing syntax

func travel(action: () -> Void) { print("I'm getting ready to go.") action() print("I arrived!") }

travel() { print("I'm driving in my car") }

travel { print("I'm driving in my car") }
