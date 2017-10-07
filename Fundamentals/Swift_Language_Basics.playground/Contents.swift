import UIKit

//nil-coalescing operator
//var isOn: String? = "On"
//print("The light is \(isOn ?? "off")")

//ranges
//let list = [[1,2,3],
//            [4,5,6],
//            [7,8,9]
//            ]
//for group in list {
//    print("The third item in each sub array is \(group[2])")
//}

//for number in 5..<10 {
//    print(number)
//}

//logic
//let hasBread: Bool? = true
//let hasMeat: Bool? = true
//let hasCheese: Bool? = true
//if (hasBread! && hasMeat! && hasCheese!) {
//    print("Can make a sandwich")
//}
//if let hasBread = hasBread, let hasMeat = hasMeat, let hasCheese = hasCheese {
//    print("Yup can make bread")
//}
//func makeSandwich(bread: Bool?, meat: Bool?, cheese: Bool?) -> String {
//    guard let hasBread = bread else { return "no bread"}
//    guard let hasMeat = meat else { return "no meat" }
//    guard let hasCheese = cheese else { return "no cheese" }
//
//    if hasBread && hasMeat && hasCheese {
//        return "we can make a sandwich!"
//    } else {
//        return "we can't make a sandwich"
//    }
//}
//makeSandwich(bread: true, meat: false, cheese: true)

//string initialization
//let emptyString = ""
//let anotherEmptyString = String()
//let newGreeting = emptyString + "hello" + " world"
//print(newGreeting)

//String looping
//let name = "Bobby"
//for letter in name.uppercased() {
//    print(letter)
//}

//arrays
//var alist: [String] = []
//let anotherList = [String]()
//alist.append("One")
//let a2DList = [[1,2,3],
//               [4,5,6],
//               [7,8,9]
//              ]
//let three = a2DList[0][2]
//let seven = a2DList[2][0]
//let listOfThrees = Array(repeatElement(3, count: 5))
//var studyMaterials: [String] = ["Laptop", "Books"]
//studyMaterials.append("Internet")
//var greatStudyMaterials: [String] = ["Practice Interviews", "math and algorithm websites"]
//studyMaterials += greatStudyMaterials
//print(studyMaterials)
//print("I've found that \(studyMaterials[3]) and \(studyMaterials[4]) are really helpful!")
//for thing in studyMaterials.enumerated() {
//    print("\(thing.offset + 1). \(thing.element)")
//}
//for (number, item) in studyMaterials.enumerated() {
//    print("\(number + 1). \(item)!!!")
//}

//sets
//var aNewSet = Set<String>()
//let anotherSet = Set<Character>()
//aNewSet.insert("First")
//print(aNewSet)
//let aListOfStuff: Set<String> = ["Rufus", "Buddy", "Buddy"]
//print(aListOfStuff.first!)

//Dictionaries
//var emptyDict: [String: String] = [:]
//emptyDict["hot dog and "] = "bun"
//print(emptyDict)
//let anotherEmptyDict = [String: String]()
//let dict = ["name": "Bobby",
//            "age": "twenty-two",
//            "favFood": "Pizza"
//            ]
//var dict2: [String: Int] = ["address": 123,
//                            "phone": 5551234,
//                            "health": 100]
//print("There are \(dict2.count) key value pairs in dict2")
//dict2["weight"] = 165
//dict2.count
//dict2["weight"] = 155
//if let newWeight = dict2["weight"] {
//    print("he now weighs \(newWeight)")
//}
//dict2["address"] = nil
//dict2.count
//for (pumpkin,latte) in dict2 {
//    print(pumpkin, latte)
//}
//let dict2Array = [Int](dict2.values)

//control flow
//let listOfNames: [String] = ["Bob", "Mary", "Justin"]
//for (number, name) in listOfNames.enumerated() {
//    print("\(number + 1). \(name)")
//}
//let aDict: [String: Bool] = ["Milk": true,
//                             "eggs": true,
//                             "coffee": true
//                            ]
//for item in aDict {
//    print(item)
//}
//let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4, "dog": 4]
////print statement of each animal and number of legs
//for animal in numberOfLegs {
//    print("the \(animal.key) has \(animal.value) legs")
//}

//print all the base 3 values up to 10. ie 3,9,27,...

//loop through 10 times, on each loop multiply and update an answerVariable - on each iteration update answerVariable to the product of itself and base 3
//var answerVariable = 1
//let base = 3
//for _ in 1...10 {
//    answerVariable = answerVariable * base
//    print(answerVariable)
//}

//print the multiples of 5 from 0 - 50
//loop through and only return divisibles of 5
//for f in 0...50 {
//    if (f % 5 == 0) {
//        print(f)
//    }
//}
////loop through using stride to set the from, to and by what stride
//for n in stride(from: 0, to: 55, by: 5) {
//    print(n)
//}
//for f in stride(from: 0, through: 50, by: 5) {
//    print(f)
//}
//While loops
//var n = 1
//while (n < 10) {
//    print(n)
//    n = n + 1
//}
//create an array of values 0-25, using repeating
//let finalSquare = 25
//var board = [Int](repeatElement(0, count: finalSquare + 1))
//var square = 0
//var diceRoll = 0
//while square < finalSquare {
//    // roll the dice
//    diceRoll += 1
//    if diceRoll == 7 { diceRoll = 1 }
//    // move by the rolled amount
//    square = square + diceRoll
//    if square < board.count {
//        // if we're still on the board, move up or down for a snake or a ladder
//        square = square + board[diceRoll]
//    }
//}
//print("Game over!")
//uinary operators
//var sum = Int()
//sum = +3
//sum = sum + 7
//sum = sum - 5
//print(sum)
//repeat-while
//var n = 0
//repeat {
//    print("first")
//    n = n + 1
//} while (n < 3)
//    print("last")
//switch statements
//let letter = "A"
//switch letter {
//case "c", "C":
//    print("found C")
//case "a", "A":
//    print("found A")
//default:
//    print("could not find letter")
//}
//let countTime = Int()
//var finalTime = String()
//switch countTime {
//case 0:
//    finalTime = "zero"
//case 1..<20:
//    finalTime = "low"
//case 20..<35:
//    finalTime = "good"
//case 35..<50:
//    finalTime = "too long"
//default:
//    finalTime = "Could not record time"
//}
//let somePoint = (1,1)
//switch somePoint {
//case (0, 0):
//    print("At the center")
//case (_, 0):
//    print("somewhere on the y-axis")
//case (0, _):
//    print("somewhere on the x-axis")
//case (-2...2, -2...2):
//    print("\(somePoint) is in the box")
//default:
//    print("unable to locate somePoint at: \(somePoint)")
//}

//create an algorithm - that returns a phrase removing all the vowels
//declare inputPhrase & outputPhrase variables, create array of characters of vowels, loop through the inputPhrase, on each character loop - check if the array of vowels contains that character if so, do nothing, if not then append the non-vowel letter to the outputPhrase
//let inputPhrase = "great minds think alike"
//var outputPhrase = ""
//let vowels: [Character] = ["a", "e", "i", "o", "u"]
//for letter in inputPhrase {
//    if (vowels.contains(letter)) {
//        //continue
//    } else {
//        outputPhrase.append(letter)
//    }
//}
//print(outputPhrase)
//guard statement

//create a person dictionary with string key and values of name, location, favFood
//var person = [String:String]()
//person = ["name": "Dean",
//          "location": "San Jose",
//          "favFood": "Burgers"
//         ]
//func greetDean(person: [String: String]) -> String {
//    guard let name = person["name"] else { return "no name found" }
//    guard let location = person["location"] else { return "no location found" }
//    guard let favoriteFood = person["favFood"] else { return "no favorite food found" }
//    return "Hello \(name), it's a lovely day in \(location), \(favoriteFood) are my favorite food too!"
//}
//greetDean(person: person)

//functions
//func greetPerson(_ person: String) -> String {
//    return "Hello \(person)"
//}
//greetPerson("Boo")
//print(greetPerson("Bob"))

//func climateGreeting(name: String, location: String) -> String {
//    return "Hello \(name), hope you're enjoying the weather in \(location)!"
//}
//print(climateGreeting(name: "Sandy", location: "Hawaii"))

//create an algorithm that takes an array and returns the smallest and largest values in a tuple
//let anArray: [Int] = []
//func smallestANDBiggest(list: [Int]) -> (smallest: Int, largest: Int)? {
//    //loop through each element in array, check each number, if number is less than smallestValue, then set smallestValue to number.
//    //else if number is greater than largestValue then set largestValue to number
//    //return (smallestValue, largestValue)
//    if (list.isEmpty) {
//        print("empty array")
//        return nil
//    } else {
//        var smallestValue = list[0]
//        var largestValue = list[0]
//        for number in list {
//            if (number < smallestValue) {
//                smallestValue = number
//            } else if (number > largestValue) {
//               largestValue = number
//            }
//        }
//    return (smallestValue, largestValue)
//    }
//}
//if let answer = smallestANDBiggest(list: anArray) {
//print("The smallest value is \(answer.smallest), and the largest value is \(answer.largest)")
//}

//build an algorithm that takes in an array of doubles and returns the average
//func average(_ numbers: Double...) -> Double? {
//    //if numbers is 0, return 0
//    //if numbers is empty return nil, make out return an optional
//    //declare an answer variable
//    //loop through numbers and add to answer variable
//    //update answer with the answer divided by its count
//    //return answer
//    if (numbers.isEmpty) {
//        print("empty list of numbers")
//        return nil
//    } else {
//        var answer = Double()
//        var numbersCount = Double()
//        for n in numbers {
//            answer += n
//            numbersCount += 1
//        }
//        answer = answer/numbersCount
//        return answer
//    }
//}
//average(3,6,9,12,15,18)

//build an algorithm that takes in 2 arguments and swaps them
//func swapper(_ firstValue: inout Int, _ secondValue: inout Int) -> (Int, Int) {
//    let tempFirstValue = firstValue
//    firstValue = secondValue
//    secondValue = tempFirstValue
//    return (firstValue, secondValue)
//}
//var someVar = 3
//var anotherVar = 10
//var newValues = swapper(&someVar, &anotherVar)
//print("The new value for someVar:\(newValues.0) and anotherVar: \(newValues.1)")

//setting a variable to a functions type
//func sum(_ num1: Int, _ num2: Int) -> Int {
//    return num1 + num2
//}
//var addingNumbers: (Int, Int) -> Int = sum(_:_:)
//addingNumbers(2, 5)
//print(addingNumbers(3, 1))

//func add(_ num1: Int, _ num2: Int) -> Int {
//    return num1 + num2
//}
//var someMath: (Int, Int) -> Int = add(_:_:)
////print("3 + 5 is \(someMath(3, 5))")
//
//func printMath(_ someSomeMath: (Int, Int) -> Int, _ a: Int, _ b: Int) {
//    print("\(someSomeMath(a, b))")
//}
//printMath(someMath, 5, 5)

//func stepForward(_ input: Int) -> Int {
//    return input + 1
//}
//
//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}
//
////build a function that returns a another function value
//func nextStep(_ steppingForward: Bool) -> (Int) -> Int {
//    return steppingForward ? stepForward : stepBackward
//}

//print numbers from 3 to 0 with a while loop & recursion
//func countDown(_ startPoint: Int) {
//    var startPoint = startPoint
//    while (startPoint != 0) {
//        print("\(startPoint)...")
//        startPoint -= 1
//    }
//    print("zero!")
//}
//countDown(3)

//func countDown(_ num: Int) {
//    print("\(num)...") //prints it as each function is pushed on the stack
//    3,2,1 == 3,2,1
//    if (num == 0) {
//        print("zero...")
//    } else {
//        countDown(num - 1)
//    }
//}
//countDown(3)

//func countUp(_ num: Int) {
//    if (num == 0) {
//        print("zero...")
//    } else {
//        countUp(num - 1)
//    }
//    print("\(num)...") //prints each as their popped off the stack
//    //3,2,1 == 1,2,3
//}
//countUp(3)

//fibonacci algorithm with recursion
//Fibonacci sequence is a sequence of numbers where the next number is the sum of the previous 2 numbers, ie 0,1,1,2,3,5,8,13...
//F(0) = 0
//F(1) = 1
//F(2) = F(1) + F(0) = 1
//F(3) = F(2) + F(1) = 2
//F(4) = F(3) + F(2) = 3
//F(5) = F(4) + F(3) = 5
//func fib(_ num: Int) -> Int {
//    //base case
//    if (num <= 2) {
//        return 1
//    } else {
//        return fib(num - 1) + fib(num - 2)
//    }
//}
//fib(6)














//recursion
//print all the numbers from 1 - N with recursion
//func printNums(N: Int) {
//    var num = 1
//    while (num <= N) {
//        print(num)
//        num += 1
//    }

//func printFirstNums(_ N: Int) {
//    if N > 1 {
//        printFirstNums(N - 1)
//    }
//    print(N)
//}
//printFirstNums(3)





////factorial with recursion
//func factorial(number: Int) -> Int {
//    var answer: Int = 1
//    if number == 1 {
//        return 1
//    } else if (number < 1) {
//        print("Only positive numbers")
//        return 0
//    } else {
//        answer = number * factorial(number: number - 1)
//    }
//    return answer
//}
//factorial(number: 4)









