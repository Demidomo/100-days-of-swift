Optionals


Handling missing data

We’ve used types such as Int to hold values like 5. 
But if you wanted to store an age property for users, what would you do if you didn’t know someone’s age?

Swift’s solution is called optionals, and you can make optionals out of any type. An optional integer might have a number like 0 or 40, 
but it might have no value at all – 
it might literally be missing, which is nil in Swift.

var age: Int? = nil
age = 38



Unwrapping optionals

Optional strings might contain a string like “Hello” or they might be nil – nothing at all.

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

If name holds a string, it will be put inside unwrapped as a regular String and we can read its count property inside the condition. 
Alternatively, if name is empty, the else code will be run.





Unwrapping with guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}



Force unwrapping


Optionals represent data that may or may not be there, but sometimes you know for sure that a value isn’t nil. 
In these cases, Swift lets you force unwrap the optional: convert it from an optional type to a non-optional type.

let str = "5"
let num = Int(str)

let num = Int(str)!





Implicitly unwrapped optionals

Like regular optionals, implicitly unwrapped optionals might contain a value or they might be nil. 
However, unlike regular optionals you don’t need to unwrap them in order to use them: you can use them as if they weren’t optional at all.

let age: Int! = nil




Nil coalescing

The nil coalescing operator unwraps an optional and returns the value inside if there is one. 
If there isn’t a value – if the optional was nil – then a default value is used instead. 
Either way, the result won’t be optional: it will either be the value from inside the optional or the default value used as a backup.


func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"




Optional chaining

Swift provides us with a shortcut when using optionals: 
if you want to access something like a.b.c and b is optional, you can write a question mark after it to enable optional chaining: a.b?.c.


let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()





Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}


try! checkPassword("sekrit")
print("OK!")




Failable initializers

let str = "5"
let num = Int(str)

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}



Typecasting


class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()]


for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
