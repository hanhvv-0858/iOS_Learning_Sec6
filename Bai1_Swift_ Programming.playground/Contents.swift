import UIKit

////1. Swift playground
//
///*2. Variables*************************/
//
//    /*2.1 Variables And Constants */
//        // var: Biến
//        //let: Hằng số
//
////            var age:Int = 42
////            print(age)
////            age = 999
////            print(age)
////
////            let name:String = "Bob"
////            print(name)
////            name = "Alice"
////            print(name)
//
///*2.2 Variable And Constant Types In Swift*/
//    //You can do
////        let name:String = "Bob"
//
//    //You can't do this
////        let name:String = 101
//
////    var score:Double = 3 + 3.1415
////    print(score)
////    print(type(of: score))
//
////    var score = 3
////    score = "Hello"
////    print(score)
//
///*3. Basic Operators ***********************/
////assignment operator (a = b)
////let b = 10
////var a = 5
////a = b
//
//
////let (x, y) = (1, 2)
////print(y)
//
////Arithmetic Operators
////1 + 2 (+=)
////5 - 3 (-=)
////2 * 3
////10.0 / 2.5
//
////remainder operator (a % b)
////9 % 4
//
////Toán tử điều kiện (question ? answer1 : answer2)
////let contentHeight = 40
////let hasHeader = true
////let rowHeight = contentHeight + (hasHeader ? 50 : 20)
//
////Nil-coalescing operator (a ?? b)
////let defaultColorName: Strin = "red"
////var userDefinedColorName: String? // nil
////
////var colorNameToUse = userDefinedColorName ?? defaultColorName
//
//
///*4. Collection Types **********************/
////var someInts = [Int]()
////someInts.append(3)
////someInts.removeAll()
////someInts = [] // someInts is now an empty array, but is still of type [Int]
//////
////var shoppingList: [String] = ["Eggs", "Milk"]
////for item in shoppingList {
////    print(item)
////}
////
//////Set : a collection with no defined ordering || need to ensure that an item only appears once
////var favoriteGenres: Set<Int> = [1,2,3]
//
//
////Dictionary
////var namesOfIntegers = [Int: String]()
////namesOfIntegers[16] = "sixteen"
////namesOfIntegers[11] = "Hello"
////namesOfIntegers[20] = "Good"
////print(namesOfIntegers)
////
////var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
////if airports.isEmpty {
////    print("The airports dictionary is empty.")
////} else {
////    print("The airports dictionary is not empty.")
////}
////airports["VNH"] = "HaNoi"
////print(airports)
////
//////update
////if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
////    print("The old value for DUB was \(oldValue).")
////}
////
//////Remove
////if let removedValue = airports.removeValue(forKey: "DUB") {
////    print("The removed airport's name is \(removedValue).")
////} else {
////    print("The airports dictionary does not contain a value for DUB.")
////}
////
//////key-value pairs
////var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin", "AAA": "Dublin"]
////for (airportCode, airportName) in airports {
////    print("\(airportCode): \(airportName)")
////}
//
////for airportCode in airports.keys {
////    print("Airport code: \(airportCode)")
////}
//////
////for airportName in airports.values {
////    print("Airport name: \(airportName)")
////}
//
///*5. Functions****************************/
//    //Without Return Values
////    func greet(person: String) {
////        print("Hello, \(person)!")
////    }
////    greet(person: "Dave")
////
////    //return value
////    func printAndCount(string: String) -> Int {
////        print(string)
////        return string.count
////    }
////    printAndCount(string: "hello, world")
////
////    //Multiple Return Values
//    func minMax(array: [Int]) -> (Int, Int) {
//        var currentMin = array[0]
//        var currentMax = array[0]
//        for value in array[1..<array.count] {
//            if value < currentMin {
//                currentMin = value
//            } else if value > currentMax {
//                currentMax = value
//            }
//        }
//        return (currentMin, currentMax)
//    }
////
//    let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
//    print("min is \(bounds.0) and max is \(bounds.1)")
//
//
//    //Argument Labels and c Names
////    func moveForward(piece: String, steps: Int)
////    {
////        print("Moving the \(piece) piece \(steps) steps forward...")
////    }
////
//    func moveForward(_ piece: String, steps: Int)
//    {
//        print("Moving the \(piece) piece \(steps) steps forward...")
//    }
//    moveForward(piece: "Queen", steps: 3)
//    moveForward("Queen", steps: 3)
//
//    func fibonacci(_ i: Int) -> Int {
//        if i <= 2 {
//          var =eturn 1
//        } else {
//            return fibonacci(i - 1) + fibonacci(i - 2)
//        }
//    }
//
//    for i in 1...10 {
//        print(fibonacci(i))
//    }


/*6. Optionals******************************/
//Optional can nil or have value
//Bạn cần unwrap biến/hằng khai báo kiểu optional để có thể sử dụng an toàn

//var name: String?
//var array: [Any]?
////print(name)
//
// name = "Arthur Dent"
////print(name)


//Bạn không thể gán giá trị nill cho biến hoặc hằng không được khai báo kiểu optional
//let score:Int? = nil
//print(score)

//Force unwrap: có 3 cách
// Cách 1: Sử dụng !
let email:String? = "vu.van.hanh@sun-asterisk.com"
if email != nil {
    print(email!)
} else {
    
}

//Cách 2: optional binding, sử dụng if let, guard let
//let optionalUsername:String? = "Hanh Vu"


//if let username = optionalUsername {
//    print(username)
//}
//var optionalUsername:String? = "Hanh Vu"
//func hello() {
//    guard let userName = optionalUsername else {
//        return
//    }
//    print(userName)
//}
//hello()


func authenticate(username: String?, password:String?)
{
    guard let username = username, let password = password else {
        return
    }
    print("username = \(username), password = \(password)")
}

authenticate(username: "Bob", password: "1234")

//Cách 3: implicitly unwrapped optional là bắt buộc hằng/biến phải luôn luôn có giá.
//Note: Chỉ khai báo biến/hằng với kiểu Implicitly Unwrapped Optional  khi và chỉ khi biến đó có ràng buộc không nil.

//let appLogo: UIImage = UIImage(named: "girl")!

//var string: String! = "I'm a string!"
//let newString: String = string
//print(newString)

//+ * /
//- input (a) INT
//- output INT
//* - Output Optional  ( Nếu a = 0 => return nil)
// Cach 4: Optional Chaining
//extension Int {
//    func add(otherNumber: Int) -> Int {
//        return self + otherNumber
//    }
//
//    func mul(otherNumber: Int) -> Int {
//        return self * otherNumber
//    }
//
//    func div(otherNumber: Int) -> Int? {
//        if otherNumber == 0 {
//            return nil
//        }
//
//        return self / otherNumber
//    }
//}
//
//var number = 5
//number.div(otherNumber: 0)?.add(otherNumber: 1).mul(otherNumber: 2)
//var name: String? = nil
//print(nil ?? "Hello")
//let value = name ?? "ABC"
/*6. For Loops******/
//
let names = ["Arthur", "Zaphod", "Trillian", "Ford", "Marvin"]
for name in names {
    print(name)
}
//
let numbers = [1, 2, 3, 4, 5, 6].filter { ($0 %2 == 0)}
var sum = 0
for i in (2...5).reversed() {
    print(numbers[i])
    sum += numbers[i]
}

//for i in 0...numbers.count {
//    sum += numbers[i]
//}
//
//for i in numbers {
//    sum += i
//}
print(sum)


//Bài tập

