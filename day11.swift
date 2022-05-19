Protocols and extensions


Protocols are a way of describing what properties and methods something must have. 
You then tell Swift which types use that protocol – a process known as adopting or conforming to a protocol.

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}



Protocol inheritance
One protocol can inherit from another in a process known as protocol inheritance. 
Unlike with classes, you can inherit from multiple protocols at the same time before you add your own customizations on top.


protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}


protocol Employee: Payable, NeedsTraining, HasVacation { }





Extensions
Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.


extension Int {
    func squared() -> Int {
        return self * self
    }
}


let number = 8
number.squared()


extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}




Protocol extensions
Protocols let you describe what methods something should have, but don’t provide the code inside. 
Extensions let you provide the code inside your methods, but only affect one data type – you can’t add the method to lots of types at the same time.


let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}


pythons.summarize()
beatles.summarize()




Protocol-oriented programming

Protocol extensions can provide default implementations for our own protocol methods. 
This makes it easy for types to conform to a protocol, and allows a technique called “protocol-oriented programming”
– crafting your code around protocols and protocol extensions.

protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}


struct User: Identifiable {
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()
