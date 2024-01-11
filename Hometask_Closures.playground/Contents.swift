import Foundation

//решение примеров по документации...
let namess = ["Sandra", "Andy", "Patrick", "Danyal", "Serjo"]
namess.sorted(by: <)

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedetNamess = namess.sorted(by: backward)

reversedetNamess = namess.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2
})

reversedetNamess = namess.sorted(by: { s1, s2 in s1 > s2 } )
reversedetNamess = namess.sorted(by: { $0 > $1 } )
reversedetNamess = namess.sorted(by: > )

let digitalNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map { (num) -> String in
    var num = num
    var output = ""
    repeat {
        output = digitalNames[num % 10]! + output
        num /= 10
    } while num > 0
    return output
}

//  Autoclosures/Автозакрытие — это замыкание, которое автоматически создается для обертывания выражения , передаваемого в качестве аргумента функции. Он не принимает никаких аргументов и при вызове возвращает значение выражения, заключенного внутри него. Это синтаксическое удобство позволяет опускать скобки вокруг параметра функции, записывая обычное выражение вместо явного замыкания.

var customersInLine = ["Chris", "Andy", "Matt", "Eva", "Sandra"]
print(customersInLine.count)

let customersProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)

print("Now serving \(customersProvider())!")

print(customersInLine.count)

// ---------------------------------------
// MARK: - Домашнее задание
// ---------------------------------------


// =======================================
// MARK: - Task 1
// =======================================

/*

 1. Написать функцию, которая ничего не возвращает и принимает только одно замыкание `closure`
 2. Это замыкание `closure` тоже ничего не принимает и ничего не возвращает
 3. Ваша функция должна посчитать от `1` до `10` в цикле и только после этого вызвать замыкание `closure`
 4. Добавьте `print(...)` на каждую итерацию цикла, и в замыкание, а затем оцените очередность выполнения команд */



// MARK: - Task 1. Solution
// =======================================

// ...
func someFunction(closure: () -> Void) -> () {
    for i in 1...10 {
        print("Current value is \(i)")
    }
    closure()
}
someFunction {
    print("I called closure function")
}




// =======================================
// MARK: - Task 2
// =======================================

/*
 1. Объявите 3 массива с типами [Int], [Double], [String] и заполните их данными
 2. Используя метод массивов `sorted`, отсортируйте массивы  по возрастанию и убыванию
 3. Для каждого массива покажите использование замыкания `sorted` по этапам (аналогично, как делали в классе):
        - В развернутом виде
        - В неявном виде
        - С использование сокращенных имен параметров
        - В сокращенной форме
 */


// MARK: - Task 2. Solution
// =======================================

// ...
//массива с типам [Int]
var someIntArray = [ 100, 222, 12, 19, 89, 94, 1, 3, 5]
someIntArray.sorted()
someIntArray.sorted(by: >)
someIntArray.sorted(by: <)
// - В развернутом виде
let ascendingSomeIntArray = someIntArray.sorted(by:{(first, second) -> Bool in
    return first < second
})
let descendingSomeIntArray = someIntArray.sorted(by:{(first, second) -> Bool in
    return first > second
})

//массив с типам [Double]
var someDoubleArray = [ 203.33, 100.433, 1.970, 22.11]
// - В неявном виде
let ascendingSomeDoubleArray = someDoubleArray.sorted(by: {
    return $0 < $1
})
let descendingSomeDoubleArray = someDoubleArray.sorted(by: {
    return $0 > $1
})

//массив с типам [String]
var someStringArray = ["Love", "Devil", "Robot", "Death"]
// - С использование сокращенных имен параметров
let ascendingSomeStringArray = someStringArray.sorted(by: <)
let descendingSomeStringArray = someStringArray.sorted(by: >)

// - В сокращенной форме
let ascendingSomeIntArrayShortened = someIntArray.sorted { $0 < $1 }
let descendingSomeIntArrayShortened = someIntArray.sorted{ $0 > $1 }


// =======================================
// MARK: - Task 3
// =======================================
/*
 1. Напишите функцию, которая принимает массив [Int] и замыкание `closure`, а затем и возвращает `Int`
 2. Замыкание `closure` должно принимать `Int` и `Int?` и возвращать `Bool`
 3. Внутри самой функции создайте переменную опционального типа
 4. Переберите массив [Int] и сравните элементы с объявленной выше переменной, используя замыкание
 5. Если замыкание возвращает `true`, то запишите значение элемента массива в эту переменную
 6. В конце функции возвращайте переменную
 7. Используя этот метод и замыкание найдите `максимальный` и `минимальный` элементы массива */


// MARK: - Task 3. Solution
// =======================================

// ...
func findInt(intArray: [Int], closure: (Int, Int?) -> Bool) -> Int? {
    var optVariable: Int?
    for i in intArray {
        if closure(i,optVariable) {
            optVariable = i
        }
    }
    return optVariable
}


// =======================================
// MARK: - Task 4
// =======================================
/*
 1. Используя строку, проинициализированную ниже, преобразуйте ее в массив символов
 2. Используя метод sorted отсортируйте этот массив символов так, чтобы:
        - вначале шли гласные в алфавитном порядке,
        - потом согласные в алфавитном порядке,
        - потом цифры по порядку,
        - а только потом символы */


// MARK: - Task 4. Solution
// =======================================

let vereVeryLongText = """
Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. and the open-source community, first released in 2014. Swift was developed as a replacement for Apple's earlier programming language Objective-C, as Objective-C had been largely unchanged since the early 1980s and lacked modern language features. Swift works with Apple's Cocoa and Cocoa Touch frameworks, and a key aspect of Swift's design was the ability to interoperate with the huge body of existing Objective-C code developed for Apple products over the previous decades. It is built with the open source LLVM compiler framework and has been included in Xcode since version 6, released in 2014. On Apple platforms, it uses the Objective-C runtime library which allows C, Objective-C, C++ and Swift code to run within one program.

Apple intended Swift to support many core concepts associated with Objective-C, notably dynamic dispatch, widespread late binding, extensible programming and similar features, but in a "safer" way, making it easier to catch software bugs; Swift has features addressing some common programming errors like null pointer dereferencing and provides syntactic sugar to help avoid the pyramid of doom. Swift supports the concept of protocol extensibility, an extensibility system that can be applied to types, structs and classes, which Apple promotes as a real change in programming paradigms they term "protocol-oriented programming".

Swift was introduced at Apple's 2014 Worldwide Developers Conference (WWDC). It underwent an upgrade to version 1.2 during 2014 and a more major upgrade to Swift 2 at WWDC 2015. Initially a proprietary language, version 2.2 was made open-source software under the Apache License 2.0 on December 3, 2015, for Apple's platforms and Linux.

Through version 3.0 the syntax of Swift went through significant evolution, with the core team making source stability a focus in later versions. In the first quarter of 2018 Swift surpassed Objective-C in measured popularity.

Swift 4.0, released in 2017, introduced several changes to some built-in classes and structures. Code written with previous versions of Swift can be updated using the migration functionality built into Xcode. Swift 5, released in March 2019, introduced a stable binary interface on Apple platforms, allowing the Swift runtime to be incorporated into Apple operating systems. It is source compatible with Swift 4.

Swift 5.1 was officially released in September 2019. Swift 5.1 builds on the previous version of Swift 5 by extending the stable features of the language to compile-time with the introduction of module stability. The introduction of module stability makes it possible to create and share binary frameworks that will work with future releases of Swift.
"""


// ...
//Чесно, я не сог самостоятельно решить это задание, много над ним сидел, думал, искал, и потом нашел 2 способа, но второй не совсем то что нужно.

//let charArray = Array(vereVeryLongText)
//
//let vowels = charArray.filter { "aeiouAEIOU".contains($0) }.sorted()
//let consonants = charArray.filter { "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".contains($0) }.sorted()
//let numbers = charArray.filter {$0.isNumber}.sorted()
//let symbols = charArray.filter {!("aeiouAEIOUbcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ0123456789".contains($0))}.sorted()
//
//let sortedArray = vowels + consonants + numbers + symbols
//let sortedString = String(sortedArray)
//print(sortedArray)


//func priority (char : Character) -> [Int] {
//    switch char.lowercased() {
//    case "a", "e", "i", "o", "u" : return 0
//    case "a"..."z" : return 1
//    case "0"..."9" : return 2
//    default : return 3
//    }
//}
//
//var newText = vereVeryLongText.sorted {
//    switch (priority(char: $0),priority(char: $1)) {
//    case let(x,y) where x < y:
//        return true
//    case let(x,y) where x > y:
//        return false
//    default: return $0.lowercased() <= $1.lowercased()
//    }
//}


// =======================================
// MARK: - Task 5*
// =======================================
/*

 1. У Вас имеется массив с именами друзей `names`(проинициализирован ниже)
 2. Реализуйте метод, который отсортирует данный массив по возрастанию количества букв в именах.
 3. !!! Для этого пункта, Вам понадобится провести исследование в документации !!!
    С помощью замыкания преобразуйте массив `names` в словарь, в котором:
        - `key` - это количество символов в имени
        - `value` - это значение, которое получено из имени друга, где все символы отсортированы по убыванию, а пробелы убраны.
        (DACB -> DCBA)
 */


// MARK: - Task 5*. Solution
// =======================================

let names: [String] = ["Arnold Schwarzenegger",
                       "Sean Connery",
                       "Julia Roberts",
                       "Albert Einstein",
                       "Sylvester Stallone",
                       "Jackie Chan",
                       "Emma Stone",
                       "Duncan MacLeod",
                       "Barbra Streisand"]


//Сам не смог, сделал по примеру
//let sortedNames = names.sorted { $0.count < $1.count }
//
//let transformedDictionary = Dictionary(uniqueKeysWithValues: sortedNames.map { ($0.count, String($0.filter { !$0.isWhitespace }.sorted(by: >))) })
//
//print(transformedDictionary)

// Преобразование массива имен в словарь
//let sortedNamesDict = names.reduce(into: [Int: String]()){ result, name in
//    let charactersCount = name.replacingOccurrences(of: "", with: "").count
//    let sortedCharacters = String(name.replacingOccurrences(of: "", with: "").sorted { $0 > $1 })
//    result[charactersCount] = sortedCharacters
//}

// Сортировка словаря по возрастанию ключей и преобразование его обратно в массив имен
//let sortedNames = sortedNamesDict.sorted { $0.key < $1.key }.map { $0.value}

// Вывод отсортированного массива имен
//print(sortedNames)

