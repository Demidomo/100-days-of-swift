/* 

Switch statemens 

Rule of thumb: >=5 conditions, use switch 


a...b     Closed Range
a..<b     Half open range
...b      One sided range
          Up to and including b, it can be any number less than b

*/


switch hardnes {
  case "Soft": 
    print(5)
  case "Medium":
  print(7)
  case "Hard":
  print(12)
  default:
  print("Error")
}


func loveCalculator() {
    let loveScore = Int.random(in: 0...100)
    
    switch loveScore {
    case 81...100:
        print("Kanye love")
    case 41..<81:
        print("coke and mintos")
    case ...40:
        print("Alone")
    default:
        print("error")
    }
}

loveCalculator()




