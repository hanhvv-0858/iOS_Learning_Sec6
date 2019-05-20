import UIKit

//
//Cho tập dữ liệu users, kiểu Dictionary [String: Int?]. Trong đó, kiểu String đại diện cho tên user, kiểu Int? đại diện cho tuổi user.
//Và một mảng kiểu [String] tương đương với tên user.
//
//Hãy tìm và in ra tên + tuổi của user trong mảng String nếu tên của user có trong tập Dictionary.
//
//VD:
//Input
//- Tập dữ liệu Dict
//[“Hanh” : 18, “Giang” : 16, “Tuan” : 15, “Dung”: nil]
//
//- Mảng tên
//[“Tuan", “Dzung", “Zaing", “Hanh", “Mai"]
//
//Output
//
//Tuan 15 tuổi
//Không tìm thấy Dzung
//Không tìm thấy Zaing
//Hanh 18 tuổi
//Không tìm thấy Mai



//let listName = ["Tuan", "Dzung", "Zaing", "Hanh", "Mai"]
//let dict = ["Hanh" : nil, "Giang" : 16, "Tuan" : 15, "Dung": nil]
//for name in listName {
//    if let age = dict[name] {
//        if let ageofName = age {
//            print("\(name) \(ageofName) tuổi")
//        } else {
//            print("\(name) chưa xác định tuổi")
//        }
//    } else {
//        print("Không tìm thấy \(name)" )
//    }
//}


//1. Tinh kế thừa
//class Car
//{
//
//}
//let ferrari:Car = Car()
//
//
//class Vehicle
//{
//    var wheels:Int = 0
//    var isDriving: Bool = false
//
//    func drive()
//    {
//        print("Driving this vehicle!")
//    }
//
//    func stop()
//    {
//         print("Vehicle is stop!")
//    }
//}
//
//class Bus: Vehicle
//{
//    var seats:Int = 0
//
//    func openDoors()
//    {
//        print("Opening bus doors...")
//    }
//
//    override func drive()
//    {
//        isDriving = true
//    }
//    override func stop() {
//        isDriving = false
//    }
//}
//
//let greyhound = Bus()
//greyhound.wheels = 8
//greyhound.seats = 45
//greyhound.drive()
//if greyhound.isDriving {
//    print("Bus is driving")
//} else {
//    print("Bus stop")
//}


//2. Kiểu tham chiếu và tham trị (Reference Types vs. Value Types)

//struct Location{
//    var longitude: Double
//    var latitude: Double
//
//    init(longitude: Double, latitude: Double) {
//        self.longitude = longitude
//        self.latitude = latitude
//    }
//}
//
//var location1 = Location(longitude: 1.23, latitude: 1.23)
//var location2 = location1
//location1.longitude = 4.56
//
//print(location1.longitude) //4.56
//print(location2.longitude) //1.23

//class Location{
//    var longitude: Double
//    var latitude: Double
//
//    init(longitude: Double, latitude: Double) {
//        self.longitude = longitude
//        self.latitude = latitude
//    }
//}
//
//var location1 = Location(longitude: 1.23, latitude: 1.23)
//var location2 = location1
//
//location1.longitude = 4.56
//
//print(location1.longitude) //4.56
//print(location2.longitude) //4.56


//1.Cấu trúc dữ liệu đơn giản, có ít thuộc tính
//2. Những dữ liệu được đóng gói sẽ được copy hơn là tham chiếu khi bạn gán hay truyền instance của struct đó.
//3. Những thuộc tính được lưu trữ bởi struct thì bản thân nó là kiểu giá trị.
//4. Struct không cần thừa kế thuộc tính hay hành vi từ bất kì kiểu khác.




//ARC

//class Person {
//    let name: String
//    init(name: String) {
//        self.name = name
//        print("\(name) is being initialized")
//    }
//    deinit {
//        print("\(name) is being deinitialized")
//    }
//}
////
//var reference1: Person?
//var reference2: Person?
//var reference3: Person?
//reference1 = Person(name: "John Appleseed")
//reference2 = reference1
//reference3 = reference1
//reference1 = nil
//reference2 = nil
//reference3 = nil


//class Person {
//    let name: String
//    init(name: String) { self.name = name }
//    var apartment: Apartment?
//    deinit { print("\(name) is being deinitialized") }
//}
//
//class Apartment {
//    let unit: String
//    init(unit: String) { self.unit = unit }
//    weak var tenant: Person?
//    deinit { print("Apartment \(unit) is being deinitialized") }
//}
//
//
//var john: Person?
//var unit4A: Apartment?
//
//john = Person(name: "John")
//unit4A = Apartment(unit: "4A")
//
//if let _john = john {
//    _john.apartment = unit4A
//}
//if let _unit4A = unit4A {
//    _unit4A.tenant = john
//}
//
//unit4A = nil
//john = nil

//
class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

var john: Customer?

john = Customer(name: "John Appleseed")
john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)
john = nil
