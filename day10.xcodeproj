Classes

Creating your own classes

Classes are similar to structs in that they allow you to create new types with properties and methods, 
but they have five important differences

The first difference between classes and structs is that classes never come with a memberwise initializer. 
This means if you have properties in your class, you must always create your own initializer.


class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")



Class inheritance
The second difference between classes and structs is that you can create a class based on an existing class – 
it inherits all the properties and methods of the original class, and can add its own on top.

This is called class inheritance or subclassing, 
the class you inherit from is called the “parent” or “super” class, and the new class is called the “child” class.

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Poodle: Dog {

}

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}




Overriding methods
Child classes can replace parent methods with their own implementations – a process known as overriding

class Dog {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle: Dog {
}

let poppy = Poodle()
poppy.makeNoise()


class Poodle: Dog {
    override func makeNoise() {
        print("Yip!")
    }
}




Final classes

sometimes you want to disallow other developers from building their own class based on yours.
Swift gives us a final keyword just for this purpose: when you declare a class as being final, no other class can inherit from it.
This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.

final class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}




Copying objects
The third difference between classes and structs is how they are copied.
When you copy a struct, both the original and the copy are different things – changing one won’t change the other. 
When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.



class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)


struct Singer {
    var name = "Taylor Swift"
}



Deinitializers
The fourth difference between classes and structs is that classes can have deinitializers – 
code that gets run when an instance of a class is destroyed.


class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}


for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

deinit {
    print("\(name) is no more!")
}



Mutability


The final difference between classes and structs is the way they deal with constants. 
If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.

class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)

class Singer {
    let name = "Taylor Swift"
}
