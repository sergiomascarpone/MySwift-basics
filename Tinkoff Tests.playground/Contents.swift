import Foundation


//let point = (-10, 10)
//
//switch point {
//case let (x, y) where x == y:
//    print("\(x) and \(y) are equal")
//
//case let (x, y) where abs(x) == abs(y):
//    print("\(x) and \(y) are equal modulo")
//
//case let (x, y):
//    print("\(x) and \(y) are not equal")
//}
//print(point)

//var list = ["Scarf", "Jeans", "Sneakers", "Coat", "Jacket"]
//list.append("Glasses")
//list.remove(at: 1)
//
//var result = [String]()
//
//for (position, object) in
//    list.reversed().enumerated() where position % 2 == 0 {
//    result.append("\(position): " + object)
//}
//print(result)

//let name = "Maria"
//let a = 3
//let b = 1
//
//for i in 1...5 {
//    if i > 1 {
//        break
//}
//
//    if a > b {
//        if name != "Anna" {
//            print("1")
//        } else {
//            print("2")
//        }
//    } else {
//        print("3")
//    }
//}

//enum Operation {
//
//  case add(constant: Int)
//    case subtract(constant: Int)
//    case multiply(constant: Int)
//}
//
//let number = 200
//let operation: Operation = .multiply(constant: 10)
//
//switch operation {
//case .add(let constant) where constant >= 10:
//    print("Result is \(number + constant)")
//
//case .subtract(let constant) where constant >= 10:
//    print("Result is \(number - constant)")
//
//case .multiply(let constant) where constant >= 10:
//    print("Result is \(number * constant)")
//
//default:
//    print("Incorrent operation")
//}

//class Counter {
//    var points: Int = 0 {
//        willSet {
//            print("Will set points to \(newValue)")
//        }
//        didSet {
//            if points > oldValue {
//                print("Added \(points - oldValue) points")
//            } else if points < oldValue {
//                print("Substracted \(oldValue  - points) points")
//            }
//        }
//    }
//}

//func someFunction(_ flag: Bool) -> ([Int]) -> [Int] {
//    func someFunction1(number: [Int]) -> [Int] {
//        return number.flatMap { [$0, $0] }
//    }
//
//    func someFunction2(number: [Int]) -> [Int] {
//        return number.flatMap { [$0, $0, $0] }
//    }
//
//    return flag ? someFunction1 : someFunction2
//}
//
//let function = someFunction(false)
//let result = function([3, 2, 1])
//print(result)
