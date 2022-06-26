/*
 
2D arrays
 
when each of the items are array themselves
 
array[i][j]
 
 */



let array = [
    [1, 2, 3],    // 0
    [4, 5, 6],    // 1
    [7, 8, 9],    // 2
] // 0, 1, 2


array[2][2]
// 9

/*
 
How to create a custom datatype
 
Create a structure and have it repped by a variable
- variables inside a structure are properties
 - Methods inside a structure are what the structure can do
 
example: Car
 - Property is the optics of the car
 - Method are what the car can do, something we cannot see or touch
 
 method can be within structures
 

 Initialiser:
 
 
*/


struct Town{
    let name = "Vancouver"
    var citizens = ["Don", "Perry"]
    var resources = ["Grain": 100, "Rice": 1000, "Wool": 43] // creating a dictionary here
    
    func fortify() {
        print("Defence Increased!")
    }
    
}

var myTown = Town()
// Created a view copy of the Town structure, and inserted into a variable

print(myTown.citizens)
// ["Don", "Perry"]

print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain. ")
// Vancouver has 100 bags of grain.

myTown.citizens.append("Fraser")


myTown.fortify()
// Defence Increased!


