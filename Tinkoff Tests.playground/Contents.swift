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
//if let input1 = readLine(),
//   let input2 = readLine(),
//   let number1 = Int(input1),
//   let number2 = Int(input2)
//{
//    let sum = number1 + number2
//    print(sum)
//}
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


//Костя подключен к мобильному оператору «Мобайл». Абонентская плата Кости составляет ﻿
//
//A﻿ рублей в месяц. За эту стоимость Костя получает ﻿
//
//B﻿ мегабайт интернет-трафика. Если Костя выйдет за лимит трафика, то каждый следующий мегабайт будет стоить ему ﻿
//C﻿ рублей.
//
//Костя планирует потратить ﻿
//
//D﻿ мегабайт интернет-трафика в следующий месяц. Помогите ему сосчитать, во сколько рублей ему обойдется интернет.
//
//Формат входных данных
//
//Вводится ﻿
//4﻿ целых положительных числа ﻿
//
//A,B,C,D(1≤A,B,C,D≤100)﻿ — стоимость тарифа Кости, размер тарифа Кости, стоимость каждого лишнего мегабайта, размер интернет-трафика Кости в следующем месяце. Числа во входном файле разделены пробелами.
//
//Формат выходных данных
//
//Выведите одно натуральное число — суммарные расходы Кости на интернет.
//
//Замечание
//
//В первом примере Костя сначала оплатит пакет интернета, после чего потратит на ﻿
//
//5﻿ мегабайт больше, чем разрешено по тарифу. Следовательно, за ﻿
//5﻿ мегабайт он дополняет отдельно, получившаяся стоимость ﻿
//100+12×5=160﻿ рублей.
//
//Во втором примере Костя укладывается в тарифный план, поэтому платит только за него.
//Answer:
//if let input = readLine() {
//    let numbers = input.components(separatedBy: " ").compactMap { Int($0) }
//    if numbers.count == 4 {
//        let A = numbers[0]
//        let B = numbers[1]
//        let C = numbers[2]
//        let D = numbers[3]
//        
//        let totalCost: Int
//        if D <= B {
//            totalCost = A
//        } else {
//            let extraUsage = D - B
//            totalCost = A + extraUsage * C
//        }
//        print(totalCost)
//    }
//}


//Формат входных данных
//
//Каждый тест состоит из нескольких наборов входных данных. В первой строке находится одно целое число ﻿
//t(1≤t≤100)﻿ — количество наборов входных данных. Далее следует описание наборов входных данных. Единственная строка каждого набора входных данных содержит одну непустую строку из больших латинских букв длиной не более 20 символов — привезённый набор букв.
//
//Формат выходных данных
//
//Для каждого набора входных данных, в отдельной строке, выведите «﻿Yes﻿» (без кавычек), если из всех привезённых букв можно составить строку «﻿TINKOFF﻿», и «﻿No﻿» иначе. Вы можете выводить каждую букву в любом регистре (строчную или заглавную). Например, строки «﻿yEs﻿», «﻿yes﻿», «﻿Yes﻿» и «﻿YES﻿» будут приняты как положительный ответ.
//Answer:
//if let tInput = readLine(), let t = Int(tInput) {
//    for _ in 0..<t {
//        if let letters = readLine() {
//            let targetWord = "TINKOFF"
//            let sortedLetters = letters.sorted()
//            let sortedTargetWord = targetWord.sorted()
//            if sortedLetters == sortedTargetWord {
//                print("Yes")
//            } else {
//                print("No")
//            }
//        }
//    }
//}



//Формат входных данных
//
//Каждый тест состоит из нескольких наборов входных данных.
//
//В первой строке находится одно целое число ﻿
//t(1≤t≤1000)﻿ — количество наборов входных данных. Далее следует описание наборов входных данных.
//
//Первая строка каждого набора входных данных содержит одно число ﻿
//n(1≤n≤10 5)﻿ — количество разработчиков. Вторая строка содержит ﻿
//nn﻿ натуральных чисел ﻿
//ai(1≤ai≤10 9)﻿ — пороги социальностей разработчиков. Гарантируется, что сумма значений ﻿
//n﻿ по всем наборам входных данных не превосходит ﻿
//10 5.
//
//
//Формат выходных данных
//
//Для каждого набора входных данных, выведите «﻿Yes﻿», если можно наладить контакт между программистами, и «﻿No﻿» иначе. Вы можете выводить каждую букву в любом регистре (строчную или заглавную). Например, строки «﻿yEs﻿», «﻿yes﻿», «﻿Yes﻿» и «﻿YES﻿» будут приняты как положительный ответ.
//if let tInput = readLine(), let t = Int(tInput) {
//    for _ in 0..<t {
//        if let nInput = readLine(), 
//            let n = Int(nInput) {
//            if let thresholdsInput = readLine() {
//                let thresholds = thresholdsInput.split(separator: " ").compactMap { Int($0) }
//                let totalSocialness = thresholds.reduce(0, +)
//                if totalSocialness <= 100000 {
//                    print("Valid total socialness for \(n) developers")
//                } else {
//                    print("Total socialness exceeds the limit for \(n) developers")
//                }
//            }
//        }
//    }
//}
//
//let t = Int(readLine()!)! // количество наборов входных данных
//
//for _ in 1...t {
//    let _ = readLine() // пропускаем количество разработчиков
//    let socialnessValues = readLine()!.split(separator: " ").map { Int($0)! } // пороги социальностей разработчиков
//
//    let sum = socialnessValues.reduce(0, +) // сумма порогов социальностей
//
//    if sum % 2 == 0 {
//        print("Yes")
//    } else {
//        print("No")
//    }
//}

//Формат входных данных
//
//Первая строка содержит два целых числа ﻿
//n(1≤n≤10 5,1≤m≤10 9)﻿ — длина списка подарков и размер предодобренного кредита.
//
//Вторая строка содержит ﻿n﻿ целых чисел — цены подарков ﻿
//ai(1≤ai≤10 9)﻿.
//
//Формат выходных данных
//
//Выведите одно число — максимальное количество бурлей, которое могло остаться у Максима после закупки подарков.
//
//Замечание
//
//В первом примере Максим может взять в кредит ﻿3﻿ бурля, и тогда он купит только последний подарок. Во втором примере Максим может взять кредит на все 10﻿ бурлей и купить все подарки.

//let input1 = readLine()!.split(separator: " ").map { Int($0)! }
//let n = input1[0] // длина списка подарков
//let m = input1[1] // размер предодобренного кредита
//
//let prices = readLine()!.split(separator: " ").map { Int($0)! } // цены подарков
//
//let maxPrice = prices.max()! // наибольшая цена подарка
//let remaining = max(0, maxPrice - m) // количество бурлей, которое могло остаться у Максима
//
//print(remaining)

//Формат входных данных
//
//В первой строке заданы два целых числа n﻿,k(1≤n≤3⋅10 5,1≤k≤30)﻿ — размер дерева и количество интересных для Боба компаний.
//
//Следующие k﻿ строк содержат различные строки длиной не более 10﻿ символов из маленьких латинских букв — названия компаний.
//
//Следующие n﻿ строк содержат описание дерева. В i﻿-ой строке находится описание ﻿i﻿-й вершины дерева ﻿
//pi,ai,ci(0≤pi≤n,0≤ai≤104)﻿:
//
//﻿
//pi — номер родителя ﻿i﻿-ой вершины или 0﻿, если вершина является корнем
//﻿
//ai — стоимость пакета акций в i﻿-ой вершине
//﻿
//ci— название компании, пакет акции которой лежит в ﻿i﻿-ой вершине
//
//Гарантируется, что компании, акции которых лежат в вершинах, интересуют Боба. Гарантируется, что входные данные задают корректное корневое дерево.
//
//Формат выходных данных
//
//Выведите единственное число — минимальное количество денег, которое должен потратить Боб, или ﻿−1﻿, если выкупить акции всех компаний невозможно.
//let numbers = Int(readLine()!)!
//let k = Int(readLine()!)!
//
//var companies = [String]()
//
//for _ in 0..<k {
//    let line = readLine()!
//    companies.append(line)
//}
//
//var root = numbers - 1
//var minCost = Int.max
//
//func search(vertex: Int, cost: Int) {
//    if vertex == -1 {
//        if cost < minCost {
//            minCost = cost
//        }
//        return
//    }
//
//    if root == vertex {
//        return
//    }
//
//    var cost = cost
//    var name = "None"
//    if companies[vertex] != "None" {
//        name = companies[vertex]
//    }
//
//    cost += Int(name.characters.count)
//
//    if cost < minCost {
//        minCost = cost
//    }
//
//    search(vertex: vertex - 1, cost: cost)
//}
//
//search(vertex: root, cost: 0)
//
//print(minCost)

//Изначально,i﻿-ый ребёнок уже досчитал до ai манулов. Далее происходят ﻿q﻿ событий, каждое из которых имеет один из двух видов ﻿(1≤v≤n,0≤x≤10 4)﻿:
//
//﻿
//+v﻿x﻿ — ребёнок с номером ﻿v﻿ отправляет по ﻿x﻿ стикеров с манулом каждому из своих друзей. Каждый из его друзей сразу же считает этих полученных манулов, т.е. прибавляет к своим уже посчитанным
//﻿
//?v — мы просим вас посчитать, сколько манулов на данный момент уже посчитал ребёнок с номером ﻿v
//Формат входных данных
//
//В первой строке даны три числа ﻿n﻿, ﻿m и ﻿q(1≤n≤10 5,0≤m≤10,1≤q≤3⋅10 5)﻿.
//
//Во второй строке заданы ﻿n﻿ чисел ﻿ai(0≤ai≤10 9)﻿ — количество уже посчитанных манулов у ﻿i﻿-го ребёнка.
//
//В каждой из следующих ﻿m﻿ строк заданы два числа ﻿v,u(1≤v=u≤n)﻿ — пары друзей. Гарантируется, что пары не повторяются.
//
//В каждой из следующих ﻿q﻿ строк описаны события в описанном формате. Гарантируется, что будет хотя бы одно событие типа ﻿?﻿.
//
//Формат выходных данных
//
//Для каждого события типа ﻿?﻿ выведите в отдельной строке требуемое значение.
//func calculateMannuls(n: Int, m: Int, q: Int, ai: [Int]) -> [Int] {
//    var mannuls = Array(repeating: 0, count: n)
//    for i in 0..<m {
//        let u = (i % 2) + 1
//        let v = (i / 2) + 1
//        mannuls[u] += mannuls[v]
//    }
//    
//    for _ in 0..<q {
//        let s = String(readLine()!)
//        switch s {
//        case "?":
//            print(mannuls[ai[Int(readLine()!)! - 1]])
//        default:
//            break
//        }
//    }
//    
//    return mannuls
//}
// Определение структуры для хранения количества посчитанных манулов у каждого ребёнка
//struct Child {
//    var stickersCounted: Int
//}
//
//var children = [Child]()
//func processEvents(_ events: [(Character, Int, Int)]) {
//    for event in events {
//        let type = event.0
//        if type == "+" {
//            let v = event.1
//            let x = event.2
//            children[v - 1].stickersCounted += x
//        } else if type == "?" {
//            let v = event.1
//            print(children[v - 1].stickersCounted)
//        }
//    }
//}
//
//let n = 5
//let m = 5
//let q = 5
//let initialCounts = [5, 3, 7, 2, 8]
//let friendPairs = [(1, 2), (3, 4), (4, 5)]
//let events: [(Character, Int, Int)] = [
//    ("+", 2, 5),
//    ("?", 1, 2),
//    ("+", 3, 2),
//    ("?", 5, 5)
//]
//
//for count in initialCounts {
//    children.append(Child(stickersCounted: count))
//}
//
//for pair in friendPairs {
//    let (v, u) = pair
//}
//
//processEvents(events)

//Дан массив ﻿a﻿ из ﻿n﻿ целых чисел. Требуется выполнить ﻿q﻿ запросов такого вида ﻿(1≤l≤r≤n,0≤k,b,x≤10 9)﻿:
//
//﻿
//+lrx— прибавить ﻿x﻿ ко всем ﻿ai на отрезке ﻿i∈[l,r]﻿
//﻿
//?lrkb — вывести ﻿max l≤i≤r min(ai,k⋅i+b)﻿
//
//Формат входных данных
//
//В первой строке заданы два числа ﻿n,q(1≤n≤2⋅10 5,1≤q≤5⋅10 5)﻿.
//
//Во второй строке задан массив ﻿a(0≤ai≤10 9)﻿.
//
//Следующие ﻿q﻿ строк содержат запросы в заданном формате. Гарантируется, что будет хотя бы один запрос типа ﻿?﻿.
//
//Формат выходных данных
//
//Для каждого запроса типа ﻿?﻿ выведите ответ в отдельной строке.

//var a = [Int](), q = 0
//
//print("n = \(readLine()!)")
//print("q = \(readLine()!)")
//
//while q > 0 {
//    a.append(Int(readLine()!)!)
//    q -= 1
//}
//
//while q > 0 {
//    let command = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    switch command[0] {
//    case 1:
//        var l = command[1], r = command[2], x = command[3]
//        for i in l...r {
//            a[i] += x
//        }
//    case 2:
//        l = command[1], r = command[2], k = command[3], b = command[4]
//        let result = max(0...r).map { i in a[i] > k * i + b ? a[i] : k * i + b }.min() ?? 0
//        print(result)
//    default:
//        break
//    }
//    q -= 1
//}
//
//let n = Int(readLine()!)!
//let q = Int(readLine()!)!
//
//var a = [Int]()
//for _ in 0..<n {
//    let ai = Int(readLine()!)!
//    a.append(ai)
//}
//
//for _ in 0..<q {
//    let cmd = readLine()!.split(separator: " ")
//    switch cmd[0] {
//    case "+":
//        let l = Int(cmd[1])!
//        let r = Int(cmd[2])!
//        let x = Int(cmd[3])!
//        for i in l..<r {
//            a[i] += x
//        }
//    case "?":
//        let l = Int(cmd[1])!
//        let r = Int(cmd[2])!
//        let k = Int(cmd[3])!
//        let b = Int(cmd[4])!
//        var max = a[l]
//        for i in l..<r {
//            if a[i] > max {
//                max = a[i]
//            }
//        }
//        print("\(max * k + b)")
//    default:
//        break
//    }
//}
