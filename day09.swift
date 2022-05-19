Structs, part two


Initializers are special methods that provide different ways to create your struct. 
All structs come with one by default, called their memberwise initializer – 
this asks you to provide a value for each property when you create the struct.

struct User {
    var username: String
}

var user = User(username: "twostraws")


struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}


var user = User()
user.username = "twostraws"




Referring to the current instance

Inside methods you get a special constant called self, which points to whatever instance of the struct is currently being used. 
This self value is particularly useful when you create initializers that have the same parameter names as your property.

struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}




Lazy properties

As a performance optimization, Swift lets you create some properties only when they are needed.


struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}


struct Person {
    var name: String
    var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")

lazy var familyTree = FamilyTree()

ed.familyTree




Static properties and methods

struct Student {
    var name: String

    init(name: String) {
        self.name = name
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

print(Student.classSize)





Access control

Access control lets you restrict which code can use properties and methods. 
This is important because you might want to stop people reading a property directly,

struct Person {
    var id: String

    init(id: String) {
        self.id = id
    }
}

let ed = Person(id: "12345")

struct Person {
    private var id: String

    init(id: String) {
        self.id = id
    }
}

struct Person {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}



