/*
 
 protocol works as a certificate in a function program
 
 - protocols can be inserted as a datatype 
 
 */


protocol CanFly  {
    func fly() {
        
    }
}


class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes new bird")
        }
    }
    
    func fly() {
        print("The bird flaps")
    }
}

class Eagle: Bird, CanFly{
    
    
    func fly() {
        
    }
    func soar() {
        print("Eagle soars")
    }
}

class Penguin:Bird{
    func swim() {
        print("The penuin swims")
    }
}

struct FlyMuseum {
    func flyingDemo(flyingObject: Bird) {
        flyingObject.fly()
    }
}


// Inherits class from Bird to Eagle
let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()

let myPengiun = Penguin()
myPengiun.layEgg
myPengiun.swim()
myPengiun.fly()


let museum = FlyingMuseum()
museum.flyingDemo(flyingObject:myPengiun)
