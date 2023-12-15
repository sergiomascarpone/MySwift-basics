import Foundation

//Чему равно значение переменной i ?
//
//var i = 2
//
//repeat {
//    i += 1
//} while i < 2
//
//print(i)
//
//Укажите тип переменной number
//
//let string = "203"
//
//let number = Double(string)
//
//Чему равен result?
//
//let power = 4
//var result = 2
//
//for _ in 1..<power {
//    result *= result
//}
//1. power равно 4.
//2. result равно 2.
//3. Затем запускается цикл for со значениями от 1 до power-1 (то есть от 1 до 3).
//4. На каждой итерации result умножается на себя (result *= result). Последовательно:
//   - Первая итерация: result = 2 * 2 = 4
//   - Вторая итерация: result = 4 * 4 = 16
//   - Третья итерация: result = 16 * 16 = 256
//
//Следовательно, после выполнения цикла result будет равен 256.

//Что напечатается в консоль?
//
//func modifiedString(_ string: String?) -> String {
//    guard var string = string else {
//        return "Empty String"
//    }
//    string = "Modified \(string)"
//    return string
//}
//var string: String? = "String"
//let result = modifiedString(string)
//print(result)
//На консоль будет напечатано "Modified String". Давайте разберемся, что происходит в функции modifiedString:
//
//1. В функции modifiedString используется guard выражение для извлечения опциональной строки. Если строка неопределена (nil), функция возвращает "Empty String".
//
//2. Если строка определена, она модифицируется путем добавления "Modified" в начале. Затем модифицированная строка возвращается.
//
//Таким образом, при передаче строки "String" в функцию modifiedString, мы получаем модифицированную строку "Modified String", которая затем будет напечатана в консоль.

//let age = 30
//var result = 100
//if age <= 10 {
//    result += 10
//} else if age > 30 {
//    result += 20
//} else {
//    result += 30
//}
//

//На стандартном потоке ввода задаются два целых числа, не меньшие -32000 и не большие 32000. На стандартный поток вывода напечатайте сумму этих чисел.
//
//Числа задаются по одному в строке. Пробельные символы перед числом и после него отсутствуют. Пустые строки в вводе отсутствуют. Swift
//
//Для решения этой задачи на Swift вам потребуется считать два числа из стандартного ввода и затем напечатать их сумму. Пример кода на Swift:
//
//```swift
if let input1 = readLine(),
   let input2 = readLine(),
   let number1 = Int(input1),
   let number2 = Int(input2)
{
    let sum = 1 + 2
    print(sum)
}
//```
//
//Вы можете использовать этот код, чтобы считать два числа из стандартного ввода и напечатать их сумму.


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
