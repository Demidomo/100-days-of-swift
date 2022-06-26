/*
 
 
 

func function Name (parameter : parameterType) -> returnType {
    return something
    // does something
}

 
 closure are anonymous funcitons
 
 */


import UIKit

func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return opetaion(n1, n2)
}

func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}

// add in the closure into the function
calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
    return no1 * no2
}

           // simplify it more
calculator(n1: 2, n2: 3, operation: { (no1, no2) in no1 * no2
        
}

           // simplify it even more
let result = calculator(n1: 2, n2: , operation: {$0 * $1})
           
print(result)
