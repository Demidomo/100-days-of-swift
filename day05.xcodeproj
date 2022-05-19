**Day 5 **

func printHelp () { let message = """

go go get some

what's good let's go """

print(message) 
}

printHelp ()

func showHelp () { print("Welcome to Kobi") print("Click the button to start") } showHelp()

// accepting parameters

func square (number:Int) { print (number*number) }

square(number:6)

func count(to: Int) { for i in 1...to { print("I'm counting: (i)") } }

func square(numbers: [Int]) { for number in numbers { let squared = number * number print("(number) squared is (squared).") } } square(numbers: [2, 3, 4])

Return data

func square(number: Int) -> Int { return number * number }

func writeToLog(message: String) -> Bool { if message != "" { print("Log: (message)") return true } else { return false } }

// make sure the --> variable type matches the return value

func countMultiplesOf10(numbers: [Int]) -> Int { var result = 0 for number in numbers { if number % 10 == 0 { result += 1 } } return result } countMultiplesOf10(numbers: [5, 10, 15, 20, 25])

func isEveryoneAdult(ages: [Int]) -> Bool { for age in ages { if age < 18 { return false } } return true } isEveryoneAdult(ages: [10, 20, 16, 24])

// Omit labels for parameters

func greet(_ person: String) { print("Hello, (person)!") }

// Default Parameter

func greet(_ person: String, nicely: Bool = true) { if nicely == true { print("Hello, (person)!") } else { print("Oh no, it's (person) again...") } }

greet("Taylor") greet("Taylor", nicely: false)

func calculateWages(payBand: Int, isOvertime: Bool = false) -> Int { var pay = 10_000 * payBand if isOvertime { pay *= 2 } return pay } calculateWages(payBand: 5, isOvertime: true)

func scoreGoal(overheadKick: Bool = false) { if overheadKick { print("Wow - amazing!") } else { print("Great goal!") } } scoreGoal(overheadKick: true)

// Variadic functions

func square(numbers: Int...) { for number in numbers { print("(number) squared is (number * number)") } }

square(numbers: 1, 2, 3, 4, 5)

func play(games: String...) { for game in games { print("Let's play (game)!") } } play(games: "Chess")

// throwing functions

enum PizzaErrors: Error { case hasPineapple } func makePizza(type: String) throws { if type != "Hawaiian" { print("Your pizza will be ready in 10 minutes.") } else { throw PizzaErrors.hasPineapple } }

enum CatProblems: Error { case notACat case unfriendly } func strokeCat(_ name: String) throws { if name == "Mr Bitey" { throw CatProblems.unfriendly } else if name == "Lassie" { throw CatProblems.notACat } else { print("You stroked (name).") } }

enum ReadingErrors: Error { case tooBoring } func readBook(isFiction: Bool = true) throws { if isFiction { print("Story time!") } else { throw ReadingErrors.tooBoring } }

// Inout parameter

func doubleInPlace(number: inout Int) { number *= 2 }

var myNum = 10 doubleInPlace(number: &myNum)

// too lazy to change the parameter, expecting the parameter to be altered in the functions

