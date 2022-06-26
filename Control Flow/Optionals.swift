/*
 
 What are these ?!
 
 ? means the datatype of a variable becomes optional
 - uncertain yet until !, this is where it unwraps
 
 
optionals help:
- think about nils
- set up safeguards 


var player1Username: String = nil
this will give an error
the normal data container cannot have no datatype

 */

var player1Username: String? = nil
// now it is an optional


player1Username = "Pinetree"

player1Username = nil
// this will clear the variable
// we can put a safety check:
// preventing errors and allow the variable to unwrap correctly

if player1Username != nil {
    print(player1Username!)
}
print(player1Username!)

