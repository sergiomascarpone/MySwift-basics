import UIKit

// Из книг будет полезно повторить темы:
// the Basics
// Basic Operators
// Strings and Characters
// Collections
// Control Flow
// Functions
// Enumerations


// MARK: - Operators
// 1. Квадратное уравнение.
// Реализуйте функцию executeEquation(), которая решает квадратное уравнение.
// Каждое равенство имеет 2 точных решения.
// Вам можно вернуть эти решения как упорядоченный массив по возрастанию или кортеж.
// Квадратное уравнение -> AX^2 + BX + C = 0

func executeEquation(a: Double, b: Double, c: Double) -> (Double, Double) {
    let discriminant = (b * b) - 4 * a * c
    let sqrtDiscriminant = discriminant.squareRoot()
    
    let x1 = (-b + sqrtDiscriminant) / (2 * a)
    let x2 = (-b - sqrtDiscriminant) / (2 * a)
    
    return(x1, x2)
}

let equation1 = executeEquation(a: 1, b: -5, c: 6)
print(equation1)
let equation2 = executeEquation(a: 1, b: 2, c: 1)
print(equation2)



// MARK: - Loops
// 2. Реализуйте 2 фукнции Вдох и Выдох, которые выводят в консоль тектовое описание, своего действия.
// Реализуйте функцию, которая позволит человеку дышать на протяжении всего времени жизни
// Время жизни передается в качестве аргумента типа Int.

func inhale() {
    print("Вдох")
}

func exhale() {
    print("Выдох")
}

func breatheDuringLifetime(lifetime: Int) {
    for _ in 1...lifetime {
        inhale()
        exhale()
    }
}

breatheDuringLifetime(lifetime: 56)


// MARK: - Collections
// 3. Простая сумма массива.
// Реализуйте функцию, которая вычислит сумму всех элементов массива и вернет ее в виде целого числа.
// В качестве аргумента на вход функции передается строка, состоящая из N целых чисел, разделенных пробелом:
// "1 2 3 4 5 6 7 8 9 0"

func sumArray(numbersString: String) -> Int {
    let numbersArray = numbersString.components(separatedBy: " ")
    var sum = 0
    
    
    for numbersString in numbersArray {
        if let number = Int(numbersString) {
            sum += number
        }
    }
    return sum
}

let numbersString = "1 2 3 4 5 6 7 8 9 0"
let sum = sumArray(numbersString: numbersString)
print(sum)

// 4. Больше/Меньше
// Реализуйте 2 функции, которая вернет максимальный и минимальный элемент массива в виде кортежа.
// 1я - должна искать элементы стандартными средствами.
// 2я - сами напишите решение для поиска максимального и минимального элемента




// 5. Реализуйте функцию, которая принимает массив, а возвращает массив в обратном порядке (не пользуясь стандартными средствами).
// Реализуйте функцию, которая также принимает последовательность и возвращает массив в обратном порядке (через стандартный метод).
// Чтобы избежать дублирования кода, сделайте так, чтобы 2я функция вызывала 1ю.

var arrayInt = [1, 3, 5, 7, 7, 8, 9, 10]

func inversseArray(originalArray: [Int]) -> [Int] {
    var modArray : [Int] = []
    
    for i in stride(from: originalArray.count - 1, through: 0,  by: -1) {
        modArray.append(originalArray[i])
    }
    return modArray
}
print(inversseArray(originalArray: arrayInt))


func reallyInverseArray(originalArray: inout [Int] ) -> () {
    originalArray = originalArray.reversed()
}
reallyInverseArray(originalArray: &arrayInt)
print(arrayInt)

// 5. Реализуйте функцию doSports, которая принимает количество отжиманий, подтягиваний и приседаний, а возвращает кортеж с переданными параметрами.
// Заполните свои спортивные достижения, а также спортивные достижения Ваших друзей.
// Найдите чемпиона по каждому из видов единоборств :)

// А еще - реализуйте функцию, которая позволит поменять результаты самого слабого и самого сильного спортсмена.

func doSport(pushUp: Int, pullDown: Int, squats: Int) -> (pushUp: Int, pullDown: Int, squats: Int) {
    return (pushUp, pullDown, squats)
}

let myScore = doSport(pushUp: 22, pullDown: 50, squats: 40)
print(myScore)
let youScore = doSport(pushUp: 13, pullDown: 45, squats: 33)
print(youScore)


func findChampion(sportsAchive: [(pushUp: Int, pullDown: Int, squats: Int)]) -> (pushUp: Int, pullDown: Int, squats: Int) {
    var champion: (pushUp: Int, pullDown: Int, squats: Int) = (0, 0, 0)
    
    for achivements in sportsAchive {
        if achivements.pushUp > champion.pushUp {
            champion.pushUp = achivements.pushUp
        }
        
        if achivements.pullDown > champion.pullDown {
            champion.pullDown = achivements.pullDown
        }
        
        if achivements.squats > champion.squats {
            champion.squats = achivements.squats
        }
    }
    return champion
}

let allAchivements = [myScore, youScore]
let champion = findChampion(sportsAchive: allAchivements)
print(champion)


//func changeScore(sportsAchive: [(pushUp: Int, pullDown: Int, squats: Int)]) {
//    guard sportsAchive.count > 1 else {
//        return
//    }
//}


// MARK: - Strings
// 6. Реализуйте функцию, которая будет проверять, является ли слово палиндромом (примеры: «комок», «ротор»).
// Если в слове содержится четное количество букв - верните сообщение об ошибке.
// !!! Обратите внимание!
// Программа должна уметь обрабатывать слово, даже если в нём использованы символы разного регистра.

func isPalindrome(_ word: String) -> String {
    let lowercasedWord = word.lowercased()
    let reversedWord = String(lowercasedWord.reversed())
    
    if lowercasedWord == reversedWord {
        if lowercasedWord.count % 2 == 0
        {
            return "Ошибка: в слове четное колличество букв"
        } else {
            return "Слово палиндром"
        }
        } else {
            return "Слово не является палиндромом"
        }
    }

let word1 = "Жанна"
let word2 = "Анна"
let word3 = "комок"
let word4 = "ротор"
let word5 = "apple"

print(isPalindrome(word1))
print(isPalindrome(word2))
print(isPalindrome(word3))
print(isPalindrome(word4))
print(isPalindrome(word5))

// 7. Реализуйте функцию, которая принимает строку, и может посчитать и вывести в консоль количество гласных, согласных, цифр, знаков препинания
// А также общее количество символов
// Для вывода используйет интерполяцию, для реализации бизнес-логики - циклы и оператор switch case.

//Не смог понять почему не достаются знаки препинания((

func textResult(_ text: String) {
    var vowelCount = 0
    var consonantCount = 0
    var digits = 0
    var simbolsCount = 0
    
    let lowercaseText = text.lowercased()
    
    for char in lowercaseText {
        switch char {
        case "a", "e", "i", "o", "u":
            vowelCount += 1
        case char where text.contains(char):
            consonantCount += 1
        case "0", "1", "2", "3":
            digits += 1
        case ".", ",", "-", "!", "?":
            simbolsCount += 1
        default:
            break
        }
    }
    
    let totalChars = lowercaseText.count
    
    print("Text has \(vowelCount) vowels, \(consonantCount) consonants, \(digits) numbers, \(simbolsCount) other simbols")
}

let text = ("The action of The Time Cycle - 1.Consequences, continues the story of the first book. (After successfully eliminating an anomaly) protagonists Matthew Madex and Lee Gran Moss receive a message from an unknown source stating the imminent and total destruction of planet Earth Who sent this ominous message that spoke of genocide?")
textResult(text)
text.count

// MARK: - Optionals
// 8. Создайте 10 строковых констант
// Среди этих констант могут быть как цифры, так и символы/буквы.
// Найдите целочисленную сумму всех этих констант (используйте приведение типов к Int)
// В Вашем решении используйте и optional binding, и forced unwrapping.

let oneStr: String = "4"
let twoStr: String  = ">"
let threStr: String  = "M"
let fourStr: String  = "a"
let fiveStr: String  = "6"
let sixStr: String  = "1"
let sevenStr: String  = "7"
let eightStr: String  = "9"
let nineStr: String  = "b"
let tenStr: String  = "D"

let sum8: Int = Int(oneStr)! + Int(eightStr)! + Int(sevenStr)!
print(sum8)


// MARK: - Enumerations
// 9. Создайте Enum дни недели, в котором должны храниться связанные значения с названиями для каждого дня.
// Выведите в консоль названия всех дней недели.

///Первый способ
//enum Weekday: CaseIterable  {
//    case Mon
//    case Tue
//    case Wed
//    case Thu
//    case Fri
//    case Sat
//    case Sun
//    
//    var dayName: String {
//        switch self {
//        case .Mon: return "Mon"
//        case .Tue: return "Tue"
//        case .Wed: return "Wed"
//        case .Thu: return "Thu"
//        case .Fri: return "Fri"
//        case .Sat: return "Sat"
//        case .Sun: return "Sun"
//        }
//    }
//}
//
//for day in Weekday.allCases {
//    print(day.dayName)
//}

///Второй способ, пришлось покапаться в доках, но в этом если разобраться, то он проще и меньше.
//enum Weekday: CaseIterable  {
//    case Mon
//    case Tue
//    case Wed
//    case Thu
//    case Fri
//    case Sat
//    case Sun
//}
//print(Weekday.allCases.count)
//
//let caseList = Weekday.allCases.map({ "\($0)" }).joined(separator: ", ")
//print(caseList)


// 10. Реализуйте решение через функции, которые могут принимать день недели в качестве входного аргумента, а также проверят и сообщат ваш рабочий график.
// А именно:
// - Нужно ли вам идти на курсы или нет
// - Рабочий день или нет
// - Выходной день или нет

// Формат вывода выберите сами: можно использовать все, что мы прошли к этому моменту.


