import UIKit

//TODO: ИСПРАВИТЬ ТЕ ОШИБКИ, КОТОРЫЕ Я УКАЗЫВАЛА В ПЕРВОМ :)


// MARK: - Базовые задачи

// MARK: - Task 1
// В массиве переменных n хранятся вещественные числа с ненулевой дробной частью.
// Реализуйте программу, округляющую числа до ближайшего целого и выводящую результат в консоль


//MARK: есть функция округления в свифте round(). Плюс вывод каждого значения можео сделать через цикл for
//TODO: переделать)
//Переделал
let num = [10.33, 11.66, 88.99, 221.43]

for nums in num {
    let roundNum = Int(nums.rounded())
    print(roundNum)
    print(num[0], num[1], num[2], num[3])
}

print(String(format: "%.1f", num[0]))
print(String(format: "%.1f", num[1]))
print(String(format: "%.1f", num[2]))
print(String(format: "%.1f", num[3]))


// MARK: - Task 2
// В массиве переменных n хранятся трёхзначные числа.
// Реализуйте программу, вычисляющую и выводящую на экран сумму цифр числа n, сумму всех чисел, среднее арифмитическое, наибольшее и наименьшее из массива число.

var box = [100, 756, 199, 433, 108, 274]

var average = 0
for i in box {
    average = average + i
}
//print(Double(average) / Double(box.count))

// MARK: с наибольшим и наименьшим согласна, с суммой всех чисел тоже. А остальное как?))))
var sum = box.reduce(0, +)

// MARK: для среднего арифмитического одно исправление из закомментированного:
print(Double(sum) / Double(box.count))

// MARK: выше выводятся только первое и последнее значение из массива, в задании такого не было
//TODO: доделать)

box.min()
box.max()
box.count


// MARK: - Task 3
// Cоздайте массив чисел, заполните их значениями от 1 до 100, перемешайте в случайном порядке.
// С помощью итерации проверьте входит ли каждое число в интервалы (15;25), (33;42) и (85;99).
// Выведите результат и числа в консоль

//Попробовал вот так
var numbers = Array(1...100)

//MARK: - для того, чтобы перемешать массив можно юзать:
numbers.shuffle()

//MARK: Здесь arr[15...25] - это срез (slice) исходного массива arr, который включает в себя элементы с индексами от 15 до 25. А надо было проверить, входит ли каждое из чисел в отрезки :)
//TODO: переделать)

for number in numbers {
    if(number > 15 && number < 25) || (number > 33 && number < 42) || (number > 85 && number < 99) {
        print("\(number) входит в один из интервалов")
    } else {
        print("\(number) не входит в интервалы")
    }
}

//arr2 = Array(arr[15...25])
//arr2 = Array(arr[33...42])
//arr2 = Array(arr[85...99])


// MARK: - Task 4
// Выведите на экран все члены последовательности 2an-1–1, где a1=2, которые меньше 100

//тут не смог додуматься(
//func arithmeticProgression (_ a: Int) {
//
//}
//
//arithmeticProgression(2)

var n = 1
var a = 2
//TODO: разобраться, что тут написано :)
while true {
    let result = (2 * a - 1)
    if result < 100 {
        print("a\(n) = \(result)")
        n += 1
        a = result
    } else {
        break
    }
}


// MARK: - Task 5
// Создайте массив из 20 случайных целых чисел из отрезка [1;10].
// Выведите массив в консоль в формате: «Индекс: [n]. Значение - x».
// Затем замените каждый элемент с четным индексом на ноль, а с нечётным на 1.
// И снова выведите массив в консоль

//Запутался(

//let intArray = Array(1...10)
//intArray.randomElement()
//
//if let random = intArray.randomElement() {
//    print(random)
//}

//TODO: разобраться, что тут написано :)

// Создаем массив из 20 случайных целых чисел в диапазоне [1;10]
var array = [Int]() //тут создали пустой массив
for _ in 1...20 {
    let randomNumber = Int.random(in: 1...10)
    array.append(randomNumber) // тут заполняем
}

//точно так же через цикл for выводим
for (index, value) in array.enumerated() {
    print("Индекс: [\(index)]. Значение - \(value)")
}

// и опять любимый цикл
for index in 0..<array.count {
    if index % 2 == 0 {
        array[index] = 0 // Четные индексы заменяем на 0
    } else {
        array[index] = 1 // Нечетные индексы заменяем на 1
    }
}

// Выводим измененный массив
print("Измененный массив:")
for (index, value) in array.enumerated() {
    print("Индекс: [\(index)]. Значение - \(value)")
}


// MARK: - Task 6
// Создайте два массива из 10 целых случайных чисел из отрезка [1;9] и третий массив из 10 действительных чисел.
// Каждый элемент с i-ым индексом третьего массива должен равняться отношению элемента из первого массива с i-ым индексом к элементу из второго массива с i-ым индексом.
// Вывести все три массива на экран (каждый на отдельной строке), затем вывести количество целых элементов в третьем массиве.

//let easy = [1, 3, 5, 8, 4 ,9, 2, 1, 6, 7, 3]
//let hard = [3, 7, 9 ,7, 6, 5, 1, 2, 8, 5, 1]
//TODO: разобраться, что тут написано :)

// Создаем два массива с 10 случайными целыми числами из отрезка [1;9]
var array1 = [Int]()
var array2 = [Int]()
for _ in 1...10 {
    let randomInt1 = Int.random(in: 1...9)
    let randomInt2 = Int.random(in: 1...9)
    array1.append(randomInt1)
    array2.append(randomInt2)
}

// Создаем третий массив из 10 действительных чисел, вычисляя их отношение
var array3 = [Double]()
for i in 0..<10 {
    let element1 = Double(array1[i])
    let element2 = Double(array2[i])
    let divisionResult = element1 / element2
    array3.append(divisionResult)
}

// Выводим все три массива на экран
print("Первый массив: \(array1)")
print("Второй массив: \(array2)")
print("Третий массив: \(array3)")

// Считаем количество целых элементов в третьем массиве
let integerCount = array3.filter { $0 == Double(Int($0)) }.count
print("Количество целых элементов в третьем массиве: \(integerCount)")

// усли посчет такой сложно разобрать, то вот еще вариант:
var integerCount1 = 0
for element in array3 {
    if element == Double(Int(element)) {
        integerCount1 += 1
    }
}
print("Количество целых элементов в третьем массиве: \(integerCount1)")


// MARK: - Task 7
// Реализуйте программу, в которой создайте словарь и заполните его различными значениями
// А затем выведите в консоль новый словарь, где все ключи и значения поменялись местами.

// MARK: Функция shuffled() переставляет элементы словаря случайным образом, но не меняет ключи и значения местами.

var stringDictionary: [String: Int] = ["Maxim": 18, "Adam": 21, "Jack": 18, "Madison": 22]
var anotherStringDictionary = stringDictionary.shuffled()
print(anotherStringDictionary)

// TODO: понять
// Создаем пустой словарь для хранения ключей и значений, поменянных местами
var reversedDictionary: [Int: String] = [:]

// Перебираем исходный словарь и меняем ключи и значения местами
for (name, age) in stringDictionary {
    reversedDictionary[age] = name
}

// Выводим новый словарь, где ключи и значения поменялись местами
print(reversedDictionary)


// MARK: - Task 8
// Создадим коллекцию Set из продуктов на кухне с типом элементов String размеров в 10 элементов.
// Удалите из множества все элементы, в названиях которых будет больше 6ти букв.

// MARK: ошибка в фильтрации элементов в Set. Надо оставить только элементы с названиями, в которых НЕ БОЛЬШЕ 6 букв.

let myRefrigerator: Set<String> = ["apples", "partridge", "pork", "sausage", "grouper", "avocado", "cucumber", "onion", "cranberry", "beef"]

let shortNames = myRefrigerator.filter({ $0.count <= 6 })

print(shortNames)


// MARK: - Простые задачи

// MARK: - Task 1
// Cоздайте массив из 12 элементов, где в каждой ячейке будет храниться количество дней в соответствующем месяце
// Выведите количество дней в каждом месяце (без имен месяцев)
// Используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
// Сделайте тоже самое, но используя массив кортежей (tupples) с параметрами (имя месяца, кол-во дней)
// Для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года

//let days1 = [31, 28, 31, 30, 31, 30, 31, 30, 31, 31, 30, 31]
//let nameMonth1 = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Des"]
//print(days1)
//
//
//var tupleArray = [(String, Int)]()
//
//for i in 0..<nameMonth1.count {
//    tupleArray.append((nameMonth1[i], days1[i]))
//}
//
//for item in tupleArray {
//    print(item)
//}
//
//
//let randomDay = (day: 12, month: "Apr")
//
//var daysToRandomDay = 0
//
//for item in tupleArray {
//    if item.0 == randomDay.month {
//        daysToRandomDay += randomDay.day - 1
//        break
//    } else {
//        daysToRandomDay += item.1
//    }
//}
//print("Days from January to my randomDay", daysToRandomDay)

// TODO: почти все ок, посмотри и разбери!
let days1 = [31, 28, 31, 30, 31, 30, 31, 30, 31, 31, 30, 31]
let nameMonth1 = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

// Выводим количество дней в каждом месяце
for (index, days) in days1.enumerated() {
    print("Месяц \(nameMonth1[index]): \(days) дней")
}

// Создаем массив кортежей с параметрами (имя месяца, кол-во дней)
var tupleArray = [(String, Int)]()
for (index, name) in nameMonth1.enumerated() {
    let days = days1[index]
    tupleArray.append((name, days))
}

// Выводим кортежи
for (name, days) in tupleArray {
    print("\(name): \(days) дней")
}

// Произвольная дата
let randomDay = (month: "Apr", day: 12)

var daysToRandomDay = 0
var found = false

// Считаем количество дней до заданной даты от начала года
for (name, days) in tupleArray {
    if name == randomDay.month {
        daysToRandomDay += randomDay.day
        found = true
        break
    } else {
        daysToRandomDay += days
    }
}

if found {
    print("Дней от начала года до \(randomDay.month) \(randomDay.day): \(daysToRandomDay)")
} else {
    print("Неправильно введен месяц")
}


// MARK: - Task 2

// Создайте словарь из массива, где название месяца - это ключ, а количество дней - значение.
// В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы,
// а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
// Выведите в консоль только те месяцы, в которых 30 дней
// Выведите в консоль только те месяцы в названии которых меньше 7 букв.

let days = [31, 28, 31, 30, 31, 30, 31, 30, 31, 31, 30, 31]
let nameMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "Semptember", "October", "November", "December"]

var dictMonth : [String:Int] = [:]

let shortsMonth = nameMonth.filter { $0.count < 7 }
print(shortsMonth)

for i in 0..<nameMonth.count {
    dictMonth[nameMonth[i]] = days[i]
}

//не смог найти как вывести месяц в которых 30(
//let lenghtMonth = dictMonth.count
//MARK: все просто:
for (key, value) in dictMonth {
    if value == 30 {
        print("\(key) - \(value) days")
    }
}

for (key,value) in dictMonth {
    print(key,"-",value)
}
for key in dictMonth.keys {
    if let value = dictMonth[key] {
        print("\(key) - \(value)")
    }
}


// MARK: - Task 3

// Создайте словарь как журнал студентов, где имя и фамилия студента - это ключ, а оценка - это значение.
// Некоторым студентам измените текущие оценки.
// Затем добавьте 3х новых студентов в группу и оцените их.
// А потом удалите 5х ребят, потому что они отчислились.
// В конце посчитайте общий бал и средний бал ребят, которые остались в группе.


var nameDictionary: [String: Int] = ["Jack": 4, "Tom": 2, "Steve": 5, "Yan": 2, "Adam": 4,]

nameDictionary.updateValue(1, forKey: "Steve")
    print(nameDictionary)

nameDictionary["Jack"] = 5
nameDictionary["Steve"] = 3
nameDictionary["Alan"] = 4
nameDictionary["Olga"] = 4
nameDictionary["Sveta"] = 3
print(nameDictionary)


nameDictionary.removeValue(forKey: "Jack")
print(nameDictionary)


nameDictionary["Tom"] = nil
nameDictionary["Steve"] = nil
nameDictionary["Olga"] = nil
nameDictionary["Sveta"] = nil
print(nameDictionary)

// MARK: для подсчета общего балла и среднего балла студентов, которые остались в группе, нужно сначала сохранить только оценки студентов, которые остались, а затем выполнить подсчет

// Фильтруем студентов, которые остались в группе
let remainingStudents = nameDictionary

// Подсчитываем общий балл и средний балл студентов, которые остались
var totalScore = 0
for (_, score) in remainingStudents {
    totalScore += score
}

let averageScore = totalScore / remainingStudents.count

print("Общий балл студентов: \(totalScore)")
print("Средний балл студентов: \(averageScore)")


// MARK: - Task 4
// Создайте словарь типа [String: (Int, Int)?],
// Где ключ - это String и хранит в себе название шахмотной фигуры
// А значение - это tuple и хранит в себе координаты фигуры X и Y на шахматной доске.
// Обратите внимание, что значение tuple - опционал и говорит о том, что фигуру "убили".
// Добавьте 5 разных фигур на шахматную доску и выведите в консоль информацию о положении каждой фигуры или ее отсутствии на поле.
// MARK: огонь!
let pointDict: [String: (Int, Int)?] = ["Конь": (X: 2, Y: 4), "Лодья": (X: 1, Y: 7), "Ферзь": (X: 5, Y: 4), "Пешка": (X: 7, Y: 2), "Слон": (X: 6, Y: 5), "Король": (nil)]

for (key, value) in pointDict {
    if let coordinates = value {
        print("\(key): \(coordinates)")
    } else {
        print("\(key) kill")
    }
}


// MARK: - Task 5.
// Создайте кортеж с тремя параметрами: ваш любимый фильм, ваше любимое число и ваше любимое блюдо.
//  Все элементы кортежа должны быть именованы.
// Одним выражением запишите каждый элемент кортежа в три константы.
// Теперь создайте второй кортеж, аналогичный первому по параметрам, но описывающий другого человека.
// Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
// Решение оформите ниже

// MARK: огонь!
let mySpace = (loveMovie: "Iron Man", loveScore: 1, loveEat: "Cheeseburger")
let loveMovie = mySpace.0
let loveScore = mySpace.1
let loveEat = mySpace.2

let anotherSpace = (loveMovie: "Interstellar", loveScore: 12, loveEat: "Hot Chicken")

var thirdSpace: (Int, Int) = (mySpace.1, anotherSpace.1)
print(mySpace.1 - anotherSpace.1)


// MARK: - Сложные задачи
// MARK: - Task 1
// Набирается группа студентов на курс по iOS разработке.
// Стоимость обучения для каждого студента зависит от общего количества слушателей.
// Если в группе менее 5 человек - стоимость обучения равна 1000 $ для каждого студента.
// Если количество слушателей от 5 до 8 человек - стоимость обучения равна 800 $ для каждого студента.
// Если количество слушателей от 9 до 12 человек - стоимость обучения равна 650 $ для каждого студента.
// Если количество слушателей более 12ти человек - стоимость обучения равна 500 $ для каждого студента.
// Реализуйте программу, которая подсчитает полную стоимость обучения всей группы с помощью конструкции if-else.
// Программа должна получать на вход количество студентов, которые собираются обучаться.


// MARK: чтобы сделать код более читаемым и избежать вложенных условий можно использовать if-else if для более ясной структуры

//var iosCoursesGroup = Int.random(in: 3...20)
//let lessThanFivePeople = ("1000$")
//let lessThanFiveOrEightPeople = ("800$")
//let lessThanNineOrTwelvePeople = ("650$")
//let lessThanMoreTwelvePeople = ("500$")

//   if iosCoursesGroup < 5 {
//                print(lessThanFivePeople)
//} else {
//   if (iosCoursesGroup >= 5 ) && (iosCoursesGroup <= 8 ) {
//                print(lessThanFiveOrEightPeople)
//} else {
//   if (iosCoursesGroup >= 9 ) && (iosCoursesGroup <= 12) {
//                print(lessThanNineOrTwelvePeople)
//} else {
//   if (iosCoursesGroup > 12) {
//                print(lessThanMoreTwelvePeople)
//            }
//        }
//    }
//}

// TODO: почти все ок, но разбери такое написание, Оно более читабельно
var iosCoursesGroup = Int.random(in: 3...20)

let lessThanFivePeoplePrice = 1000
let lessThanFiveOrEightPeoplePrice = 800
let lessThanNineOrTwelvePeoplePrice = 650
let lessThanMoreTwelvePeoplePrice = 500

var totalPrice: Int

if iosCoursesGroup < 5 {
    totalPrice = iosCoursesGroup * lessThanFivePeoplePrice
} else if iosCoursesGroup <= 8 {
    totalPrice = iosCoursesGroup * lessThanFiveOrEightPeoplePrice
} else if iosCoursesGroup <= 12 {
    totalPrice = iosCoursesGroup * lessThanNineOrTwelvePeoplePrice
} else {
    totalPrice = iosCoursesGroup * lessThanMoreTwelvePeoplePrice
}

print("Стоимость обучения для \(iosCoursesGroup) студентов: $\(totalPrice)")


// MARK: - Task 2
// Используя массивы, сформируйте группу студентов, готовую посещать курсы.
// Для каждого студента добавьте Фамилию, возраст и флаг, который будет хранить информацию, есть ли у него/нее в наличии техника Apple.
// Отсортируйте группу: а) по возрасту, б) по Фамилиям

// MARK: чтобы отсортировать группу студентов по возрасту или фамилиям, следует использовать массив структур или кортежей, а не словарь

//let students: [String: (Int, String)] = ["Maximov": (19, "Yes"), "Fadeeva": (18, "Yes"), "Gurskiy": (19, "No"), "Nikitina": (19, "yes"), "Kuraev": (19, "No")]
//
//let groupA = students.values
//print(groupA)
//
//
//let groupB = students.keys
//print(groupB)

// TODO: разбери
struct Student {
    let lastName: String
    let age: Int
    let hasAppleTech: String
}

let students: [Student] = [
    Student(lastName: "Maximov", age: 19, hasAppleTech: "Yes"),
    Student(lastName: "Fadeeva", age: 18, hasAppleTech: "Yes"),
    Student(lastName: "Gurskiy", age: 19, hasAppleTech: "No"),
    Student(lastName: "Nikitina", age: 19, hasAppleTech: "Yes"),
    Student(lastName: "Kuraev", age: 19, hasAppleTech: "No")
]

// Сортировка по возрасту
let sortedByAge = students.sorted { $0.age < $1.age }
print("Сортировка по возрасту:")
for student in sortedByAge {
    print("\(student.lastName), возраст: \(student.age), есть техника Apple: \(student.hasAppleTech)")
}

// Сортировка по фамилиям
let sortedByLastName = students.sorted { $0.lastName < $1.lastName }
print("\nСортировка по фамилиям:")
for student in sortedByLastName {
    print("\(student.lastName), возраст: \(student.age), есть техника Apple: \(student.hasAppleTech)")
}


// MARK: - Task 3
// Добавьте возможность случайным образом решить, какой студент пойдет у доски отвечать на вопросы преподавателя

let studentsAnsver = students.randomElement()

// TODO: разбери
if let student = studentsAnsver {
    print("\(student.lastName) идет к доске отвечать на вопросы преподавателя.")
} else {
    print("Никто не идет к доске отвечать на вопросы преподавателя.")
}


// MARK: - Task 4

// Реализуйте программу, которая подсчитает полную стоимость обучения всей группы,
// с учетом того, что обучаться могут только те студенты, у которых есть в наличии техника Apple.
// Используете решения из предыдущих задач
// TODO: разбери

let studentsWithAppleTech = students.filter { $0.hasAppleTech.lowercased() == "yes" }

if studentsWithAppleTech.count < 5 {
    totalPrice = studentsWithAppleTech.count * lessThanFivePeoplePrice
} else if studentsWithAppleTech.count <= 8 {
    totalPrice = studentsWithAppleTech.count * lessThanFiveOrEightPeoplePrice
} else if studentsWithAppleTech.count <= 12 {
    totalPrice = studentsWithAppleTech.count * lessThanNineOrTwelvePeoplePrice
} else {
    totalPrice = studentsWithAppleTech.count * lessThanMoreTwelvePeoplePrice
}


// MARK: - Task 5
// Используя словари, составьте журнал студентов, которые будут обучаться на курсах.
// Все студенты в журнале должны храниться под своим уникальным номером (id)
// В журнал можно добавить только тех студентов, которые удовлетворяют условиям предыдущих задач.

//не разобрался с флагом, не понял как его реализовать, чтобы потом сделать сортировку по наличии техники Apple

// MARK: как вариант:

var students1: [String: Student] = [:]
let studentData: [(String, String, Int)] = [
    ("Maximov", "Yes", 19),
    ("Fadeeva", "Yes", 18),
    ("Gurskiy", "No", 19),
    ("Nikitina", "Yes", 19),
    ("Kuraev", "No", 19)
]

for (index, data) in studentData.enumerated() {
    let (lastName, hasAppleTech, age) = data
    if hasAppleTech.lowercased() == "yes" {
        let student = Student(lastName: lastName, age: age, hasAppleTech: hasAppleTech)
        students1["id\(index + 1)"] = student
    }
}

// Выводим журнал студентов
for (id, student) in students1 {
    print("ID: \(id), Фамилия: \(student.lastName), Возраст: \(student.age), Есть техника Apple: \(student.hasAppleTech)")
}


// MARK: - Task 6
// Распределите студентов по группам так, чтобы в каждой группе были студенты с УНИКАЛЬНЫМИ фамилиями
// Каждый студент с повторяющейся фамилией попадает в новую группу.
// Выведите списки групп в консоль
// (Обратите внимание, какую коллекцию нужно использовать в решении)

