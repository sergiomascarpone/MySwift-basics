import UIKit

// MARK: - Task 1 - Classes + Initialization
// 1. Создайте 3 любых класса и реализуйте в них инициализаторы разного типа

//этот вариант я записал после прочтения документации
//class Vehicle {
//    var numberOfWheels = 0
//    var description: String {
//        return "\(numberOfWheels) колёс(0)"
//    }
//}
//
//let vehicle = Vehicle()
//print("Транспортное средство \(vehicle.description)")
//
//class Bicycle: Vehicle {
//    override init() {
//        super.init()
//        numberOfWheels = 2
//    }
//}
//
//let bicycle = Bicycle()
//print("Велосипед: \(bicycle.description)")

//тут попробовал поискать еще в интернете варианты, только вот осталось с ними разобраться и вникнуть. чтобы в любой момент мог написать не подглядывая)))


//class Car {
//    let brand: String
//    let model: String
//    var color: String
//    
//    init(brand: String, model: String, color: String) {
//        self.brand = brand
//        self.model = model
//        self.color = color
//    }
//    
//    convenience init(brand: String, model: String) {
//        self.init(brand: brand, model: model, color: "Black")
//    }
//    
//    func startEngine() {
//        print("Starting the engine of \(brand) \(model)")
//    }
//}
//let car1 = Car(brand: "Toyota", model: "Camry", color: "Red")
//let car2 = Car(brand: "BMW", model: "X5")
//car1.startEngine()
//car2.startEngine()
//
//
//class Book {
//    let title: String
//    let author: String
//    var pageCount: Int
//    
//    init(title: String, author: String, pageCount: Int) {
//        self.title = title
//        self.author = author
//        self.pageCount = pageCount
//    }
//    
//    convenience init(title: String, author: String) {
//        self.init(title: title, author: author, pageCount: 0)
//    }
//    
//    func read() {
//        print("Reading \(title) by \(author)")
//    }
//}
//let book1 = Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", pageCount: 218)
//let book2 = Book(title: "To Kill a Mockingbird", author: "Harper Lee")
//book1.read()
//book2.read()
//
//
//class Animal {
//    let name: String
//    var age: Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    
//    convenience init(name: String) {
//        self.init(name: name, age: 0)
//    }
//    
//    func sleep() {
//        print("\(name) is sleeping")
//    }
//}
//let animal1 = Animal(name: "Dog", age: 3)
//let animal2 = Animal(name: "Cat")
//animal1.sleep()
//animal2.sleep()


// MARK: - Task 2 - Structure
// Используйте решение и предыдущей домашней работы
// Если домашнее было не выполнено, тогда реализуйте Ваше решение ниже.

// 1. Создайте структуру Студент.
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этой структуры и заполните их данными.
// Положите их всех в массив (журнал).

//struct Student {
//    let name: String
//    let lastName: String
//    let averageScore: Int
//}
//   
//func studentsData(_students: [Student]) {
//    for (index, student) in students.enumerated() {
//        let studentNumber = index + 1
//        print("Srudent№:\(studentNumber). Name: \(student.name). LastName: \(student.lastName). AverageScore: \(student.averageScore)")
////        print("Name \(student.name)")
////        print("LastNme \(student.lastName)")
////        print("AverageScore \(student.averageScore)")
//    }
//}
//
//
//let students: [Student] = [
//    Student(name: "Alesja", lastName: "Nikolaevna", averageScore: 3),
//    Student(name:"Maksim", lastName: "Borisovich", averageScore: 4),
//    Student(name: "Egor", lastName: "Sergeevich", averageScore: 5),
//    Student(name: "Sergey", lastName: "Olegivich", averageScore: 4)
//]
//
//
//studentsData(_students: [])


// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

//func studentsData(_students: [Student]) {
//    for (index, student) in students.enumerated() {
//        let studentNumber = index + 1
//        print("Srudent№:\(studentNumber). Name: \(student.name). LastName: \(student.lastName). AverageScore: \(student.averageScore)")
//       print("Name \(student.name)")
//       print("LastNme \(student.lastName)")
//       print("AverageScore \(student.averageScore)")


// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

//Сделал вот так, по примеру пред.задач, но хотел попробовать вывести в таком же формате, как и ранее:
//Srudent№:1. Name: Alesja. LastName: Nikolaevna. AverageScore: 3
//Srudent№:2. Name: Maksim. LastName: Borisovich. AverageScore: 4
//Srudent№:3. Name: Egor. LastName: Sergeevich. AverageScore: 5
//Srudent№:4. Name: Sergey. LastName: Olegivich. AverageScore: 4 но у меня не получилось, я думал притянуть функцию, но у меня ничего не получалось и всё крашилось((

//let sortedAverageScore = students.sorted { $1.averageScore < $0.averageScore }
//print("\nSorted by average score:")
//for student in sortedAverageScore {
//    print("Student: \(student.name), \(student.lastName), \(student.averageScore)")
//}
//
//// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
//// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.
//
//let sortedByLastName = students.sorted { $0.lastName < $1.lastName }
//print("\nSorted by last name:")
//for student in sortedByLastName {
//    print("Student: \(student.name), \(student.lastName), \(student.averageScore)")
//}

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?
// Распечатайте оба массива.

//С этим я совсем запутался и наверное сделал не так как надо((
//var studentArray = [students]
//print(studentArray)
//
//
//var updatedStudentsArray = [Student(name: "Galina", lastName: "Olegovna", averageScore: 5)]
//print(updatedStudentsArray)


// MARK: - Task 3 - Classes
// Используйте решение и предыдущей домашней работы
// Если домашнее было не выполнено, тогда реализуйте Ваше решение ниже.

// 1. Создайте класс Студент
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этого класса и заполните их данными.
// Положите их всех в массив (журнал).

//class Student {
//    let name: String
//    let lastName: String
//    let yearOfBirth: Int
//    let averageScore: Double
//    
//    init(name: String, lastName: String, yearOfBirth: Int, averageScore: Double) {
//        self.name = name
//        self.lastName = lastName
//        self.yearOfBirth = yearOfBirth
//        self.averageScore = averageScore
//    }
//}
//
//func studentsData(_students: [Student]) {
//    for (index, student) in student.enumerated() {
//        let studentNumber = index + 1
//        print("Student№: \(studentNumber). Name: \(student.name). LastName: \(student.lastName). YearOfBirth: \(student.yearOfBirth). AverageScore: \(student.averageScore)")
////        print("Name \(student.name)")
////        print("LastName \(student.lastName)")
////        print("YearOfBirth \(student.yearOfBirth)")
////        print("AverageScore \(student.averageScore)")
//    }
//}
//
//let student: [Student] = [
//    Student(name: "Sergey", lastName: "Maximov", yearOfBirth: 29, averageScore: 5),
//    Student(name: "Viktoria", lastName: "Olegovna", yearOfBirth: 27, averageScore: 3.7),
//    Student(name: "Anton", lastName: "Kereev", yearOfBirth: 24, averageScore: 3.9),
//    Student(name: "Vasilij", lastName: "Nikitin", yearOfBirth: 30, averageScore: 4.4),
//    Student(name: "Pavel", lastName: "Vladimirovich", yearOfBirth: 28, averageScore: 5),
//    Student(name: "Svetlana", lastName: "Philipenko", yearOfBirth: 27, averageScore: 4.7)
//]
//
//studentsData(_students: [])

// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

//func studentsJournal(_students: [Student]) {
//    for (index, student) in students.enumerated() {
//        let studentNumber = index + 1
//        print("Student№:\(studentNumber). Name: \(student.name), LastName: \(student.lastName), YearOfBirth: \(student.yearOfBirth), AverageScore: \(student.averageScore)")
//    }
//}

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

//let sortedAverageScore = student.sorted { $1.averageScore < $0.averageScore }
//print("\nSorted by average score:")
//for student in sortedAverageScore {
//    print("Name: \(student.name). LastName: \(student.lastName). YearOfBirth: \(student.yearOfBirth). AverageScore: \(student.averageScore)")
//}

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

// подглядел в интернете
//let sortedPeople = student.sorted { (Student1, Student2) -> Bool in
//    if Student1.lastName == Student2.lastName {
//        return Student1.name < Student2.name
//    } else {
//        return Student1.lastName < Student2.lastName
//    }
//}
//print("\nSorted by last name, name:")
//for Student in sortedPeople {
//    print("Name: \(Student.name). LastName:\(Student.lastName). YearOfBirth: \(Student.yearOfBirth). AverageScore: \(Student.averageScore)")
//}

//let sortedlastName = student.sorted { $0.lastName < $1.lastName }
//print("nSorted by Last Name:")
//for student in sortedlastName {
//    print("Name: \(student.name). LastName: \(student.lastName). YearOfBirth: \(student.yearOfBirth). AverageScore: \(student.averageScore)")
//}

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?

// Я честно не смог разобраться с этим заданием(
// остальные задания №2 и №3 дались легко, пример был перед глазами, без подсказок пока тяжело самому вот так вот сесть и написать\решить поставленную задачу. Но может быть что там у нас константа, а она неизменяемая, а в задании 5 переменная, будет 2 массива

//var studentArray = [student]
//print(studentArray)
//
//
//var updatedStudentsArray: [Student] = [
//    Student(name: "Oleg", lastName: "Dolgix", yearOfBirth: 23, averageScore: 3.9),
//    Student(name: "Stas", lastName: "Aleshko", yearOfBirth: 24, averageScore: 3.3),
//    Student(name: "Alina", lastName: "Birukov", yearOfBirth: 22, averageScore: 4.0),
//    Student(name: "Svetlana", lastName: "Olegovna", yearOfBirth: 21, averageScore: 4.4),
//    Student(name: "Viktoria", lastName: "Aleksandrovna", yearOfBirth: 23, averageScore: 5.0),
//    Student(name: "Sergey", lastName: "Olegovich", yearOfBirth: 22, averageScore: 4.9),
//    Student(name: "Aleksandra", lastName: "Sergeevna", yearOfBirth: 24, averageScore: 4.7)]
//
//
//print(updatedStudentsArray)

// MARK: - Почему по итогу массивы из заданий 2 и 3 менялись / не менялись? Чем это обусловлено?

// Это 5 задание которое я не смог правильно сделать, но если логически подумать, то данные массива должны будут изменится в классе так как класс это ссылочный тип, и остаться неизменным в структуре, так как это значимый тип.


// MARK: - Резюмируйте, чем отличаются классы от структур и когда что лучше использовать?

// Структуры это значимый тип, а классы ссылочный тип. Если по документации, то по умолчанию лучше структуры. Нам проще анализировать свой код, так как структура не может быть изменена другой частью кода.
// С помощью класса, мы можем четко опредеоить родительско-дочернюю связь между классом и подклассом.


// MARK: - Task 4 - Properties
// Добавить студенту property «Дата рождения» (структура, содержащая день, месяц, год) и два computed property:
// 1 — вычисляющее его возраст
// 2 — вычисляющее, сколько всего лет он учился (студент учился в школе с 6 лет, если ему меньше 6 лет — возвращать 0)


//struct Birthday {
//    var day: Int
//    var month: Int
//    var year: Int
//}
//
//struct Student {
//    var firstName: String
//    var lastName: String
//    var birthday: Birthday
//    
//    var age: Int { // age - вычисляет возраст студента на текущую дату. Мы используем текущую дату (Date()) и текущий год (calendar.component(.year, from: currentDate)) для вычисления возраста.
//        let currentData = Date()
//        let calendar = Calendar.current
//        let currentYear = calendar.component(.year, from: currentData)
//        
//        let age = currentYear - birthday.year
//        
//        if calendar.component(.month, from: currentData) < birthday.month || (calendar.component(.month, from: currentData) == birthday.month && calendar.component(.day, from: currentData) < birthday.day) {
//            return age - 1
//        } else {
//            return age
//        }
//    }
//    
//    var yearsOfStudy: Int { //yearsOfStudy - вычисляет количество лет обучения студента.
//        if age < 6 {
//            return 0
//        } else {
//            return age - 6
//        }
//    }
//}
//
//let student = Student(firstName: "Oleg", lastName: "Tinkov", birthday: Birthday(day: 12, month: 4, year: 1989))
//print("Age: \(student.age)")
//print("Years of study: \(student.yearsOfStudy)")

// MARK: - Task 5 - Properties
// 1. Создайте класс Человек, который будет содержать имя, фамилию, возраст, рост и вес.
// 2. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
// - минимальный и максимальный возраст каждого объекта
// - минимальную и максимальную длину имени и фамилии
// - минимально возможный рост и вес
// - создайте свойство, которое будет содержать количество созданных объектов этого класса
// Вот тут немного нужно самому разобраться, а то я совсем не так понял, как и что тут работает прям досконально)))

//class Person {
//    
//    static var count = 0
//    
//    static let minAge = 0
//    static let maxAge = 100
//    
//    static let minNameLenght = 2
//    static let maxNameLenght = 50
//    
//    static let minGrowth = 0
//    static let minWeight = 0
//    
//    let name: String
//    let lastName: String
//    let age: Int
//    let growth: Int
//    let weight: Int
//    
//    init(name: String, lastName: String, age: Int, growth: Int, weight: Int) {
//        self.name = name
//        self.lastName = lastName
//        self.age = age
//        self.growth = growth
//        self.weight = weight
//        
//        Person.count += 1
//    }
//}
//
//let person1 = Person(name: "Vadim", lastName: "Oleynikov", age: 22, growth: 187, weight: 90)
//let person2 = Person(name: "Dmitriy", lastName: "Gurmen", age: 34, growth: 187, weight: 87)
//
//print("Count: \(Person.count)")


// MARK: - Task 6 - Inheritance
// 1. Создайте класс Кот
// 2. Наделите родительский класс свойствами и методами
// 3. Создайте 2 класса наследника: Рыжий кот и Черная кошка
// 4. Добавьте все необходимые свойства: цвет, пол, размер
// 5. Добавьте приватное свойство Голос, в которое нельзя записать значение извне
// 6. Реализуйте свойство имя кота, доступное только для чтения, и дайте имя каждому котику
// 7. Реализуйте конструктор, который в качестве аргумента принимает имя животного и устанавливает его в переменную с соответствующим уровнем доступа, который не позволяет переопределить её в дочерних классах

//Пока не работает и я не могу понять почему(((( Оказывается дело было в том. что аргумент «пол» должен предшествовать аргументу «размер», а у меня было по другому)) тут и смог разобраться.
//class Cat {
//    private var voice: String?
//    var name: String
//    
//    var color: String
//    var gender: String
//    var size: String
//    
//    init(name: String, color: String, gender: String, size: String) {
//       
//        self.name = name
//        self.color = color
//        self.gender = gender
//        self.size = size
//    }
//    
//    func makeSound() {
//        if let voice = voice {
//            print("\(name) says \(voice)")
//        } else {
//            print("\(name) is silent")
//        }
//    }
//}
//
//
//class OrangeCat: Cat {
//    
//    init(name: String, gender: String, size: String) {
//        super.init(name: name, color: "Orange", gender: gender, size: size)
//    }
//}
//
//
//class BlackCat: Cat {
//    
//    init(name: String, gender: String, size: String) {
//        super.init(name: name, color: "Black", gender: gender, size: size)
//    }
//}
//
//
//let garfieldCat = OrangeCat(name: "Garfield", gender: "male", size: "small")
//print(garfieldCat.name)
//garfieldCat.makeSound()
//
//
//let oliviaCat = BlackCat(name: "Olivia", gender: "female", size: "medium")
//print(oliviaCat.name)
//oliviaCat.makeSound()
//

// MARK: - Task 7 - Overriding
// 1. Создайте класс Геометрическая фигура и реализуйте в нем метод подсчета площади фигуры
// 2. Создайте 5 классов-наследников: Круг, Квадрат, Треугольник, Трапеция и Ромб
// 3. Переопределите метод подсчета площади фигуры и реализуйте расчет этой площади для каждой фигуры
// 4. Все результаты вывести в консоль.
// 5. Добавьте переменную Description, которая характеризует тип фигуры
// 6. Переопределите ее для каждой фигуры и выведите описание каждой фигуры в консоль
// 7. Определите свойство цвет для каждой фигуры
// 8. Если фигуры - Круг, Треугольник или Ромб - задайте им красный цвет
// 9. Если фигуры - Квадрат или Трапеция - задайте им зеленый цвет

//class GeometricFigure {
//    var description = ""
//    var color = ""
//    
//    func calculateArea() {
//        print("Метод подсчёта площади фигуры")
//    }
//}
//
//
//class Circle: GeometricFigure {
//    override func calculateArea() {
//        super.calculateArea()
//        print("Расчёт площади круга")
//    }
//    
//    override var description: String {
//        return "Это круг"
//    }
//    
//    override var color: String {
//        return "Красный"
//    }
//}
//
//
//class Square: GeometricFigure {
//    override func calculateArea() {
//        super.calculateArea()
//        print("Расчёт площади квадрата")
//    }
//    
//    override var description: String {
//        return "Это квадрат"
//    }
//    
//    override var color: String {
//        return "Зелёный"
//    }
//}
//
//
//class Triangle: GeometricFigure {
//    override func calculateArea() {
//        super.calculateArea()
//        print("Расчёт площади треугольника")
//    }
//    
//    override var description: String {
//        return "Это треугольник"
//    }
//    
//    override var color: String {
//        return "Красный"
//    }
//}
//
//
//class Trapezoid: GeometricFigure {
//    override func calculateArea() {
//        super.calculateArea()
//        print("Расчёт площади трапеции")
//    }
//    
//    override var description: String {
//        return "Это трапеция"
//    }
//    
//    override var color: String {
//        return "Зелёный"
//    }
//}
//
//
//class Rhombus: GeometricFigure {
//    override func calculateArea() {
//        super.calculateArea()
//        print("Расчёт площади ромба")
//    }
//    
//    override var description: String {
//        return "Это ромб"
//    }
//    
//    override var color: String {
//        return "Красный"
//    }
//}
//
//
//let circle = Circle()
//circle.calculateArea()
//print("Описание: \(circle.description)")
//print("Цвет: \(circle.color)")
//
//let square = Square()
//square.calculateArea()
//print("Описание: \(square.description)")
//print("Цвет: \(square.color)")
//
//let triangle = Triangle()
//triangle.calculateArea()
//print("Описание: \(triangle.description)")
//print("Цвет: \(triangle.color)")
//
//let trapezoid = Trapezoid()
//trapezoid.calculateArea()
//print("Описание: \(trapezoid.description)")
//print("Цвет: \(trapezoid.color)")
//
//let rhombus = Rhombus()
//rhombus.calculateArea()
//print("Описание: \(rhombus.description)")
//print("Цвет: \(rhombus.color)")


// MARK: - Task 8 - Extensions
// 1. Создайте расширение для Int со свойствами isNegative, isPositive
// 2. Добавьте свойство, которое возвращает количество символов в числе
// 3. Добавьте типу String метод trimText(), чтобы он мог отсекать N последних символов
// !!! Обратите внимание, как будет вести себя ваша программа, если вы попытаетесь удалить больше символов, чем есть в строке

// 4. Добавьте типу String метод truncate(length: Int), который определит, что строка длиннее, чем length
// А затем отсечет лишние символы и заменит их на "..."

extension Int {
    var isNegative: Bool {
        return self < 0
    }
    
    var isPositive: Bool {
        return self > 0
    }
    
    var characterCount: Int {
        return Stride(self).count
    }
}


extension String {
    func trimText(lenght: Int) -> String {
        guard lenght <= self.count else {
            return self
        }
        let endIndex = self.index(self.endIndex, offsetBy: -lenght)
        return String(self[..<endIndex])
    }
    
    func truncate(lenght: Int) -> String {
        guard self.count > lenght else {
            return self
        }
        let endIndex = self.index(self.startIndex, offsetBy: lenght)
        return self[..<endIndex] + "..."
    }
}


let number = 12345
print(number.isPositive)
print(number.isNegative)
print(number.characterCount)

let text = "Hello, world!"
print(text.trimText(length: 5))
print(text.truncate(length: 10))

// MARK: - Task 9 - Inheritance + Protocol
// 1. Создайте базовый класс «Артист», у которого должны быть:

/// `Свойства`
// - имя (структура) - разрешить только чтение
// - возраст - сделать проверку на положительное значение
// - страна работы (Беларусь, Россия, Украина, другое (enum associated value))
// - стаж работы
// - зарплата в неделю - артист может отказаться её озвучивать
// - зарплата за день - вычисляется на основе зарплаты в неделю после того, как было установлено новое значение
// - сколько процентов своей жизни работал артистом - computed property


class Artist {
    let name: String
    var age: Int {
        didSet {
            if age < 0 {
                age = 0
            }
        }
    }
    var countryOfWork: String
    var experienceYears: Int
    private var weeklySalary: Int?
    
    var dailySalary: Int {
        if let weeklySalary = weeklySalary {
            return weeklySalary / 7
        }
        return 80 // default daily salary if weekly salary is not specified
    }
    
    var percentOfWorkLife: Double {
        get {
            return Double(experienceYears) / Double(age)
        }
    }
    
    enum Country {
        case belarus
        case russia
        case ukraine
        case other(countryName: String)
    }
    
    init(name: String, age: Int, countryOfWork: String, experienceYears: Int, weeklySalary: Int?) {
        self.name = name
        self.age = age
        self.countryOfWork = countryOfWork
        self.experienceYears = experienceYears
        self.weeklySalary = weeklySalary
    }
}

/// `Инициализаторы`
// 2 разных инициализатора (имя в каждом инициализаторе - обязательно)

/// `Методы`
// статический метод, возвращающий возможные страны проживания артиста. сделать недоступным к переопределению
// статический метод, выводящий информацию о названии класса в консоль
// метод с информацией об артисте - выводит все свойства в читаемом виде. недоступен к переопределению
// метод «выступить», выводящий информацию об артисте, в каком жанре выступает и что показывает

// Создать классы «Музыкант», «Художник», «Танцор», наследующиеся от артиста.
// В каждом классе переопределить метод с информацией о классе.
// - Танцор отказывается выступать, если его зарплата за день меньше 100, о чем сообщает в консоли.
// - Художник не хочет использовать своё родное имя, заменяя его на сценическое, которое состоит из перемешанных букв родного имени.
// - Музыканты не хотят работать в Турции, уезжая в любую другую страну из списка доступных, а также у них появляется новый параметр - любимый инструмент.

// Создать по два экземпляра каждого класса (в том числе родителя) с различными данными, положив их в массив типа Артист.
// Пройтись по массиву и вызвать у каждого элемента метод выступить. Если в списке попался Танцор, то вывести его зарплату за день, если Музыкант, то отобразить любимый инструмент.

// 2. Создать протокол BusinessTrip со свойствами страна, продолжительность поездки, методы startTrip(), endTrip() и expressIndignation().
// Сделать реализацию по умолчанию метода startTrip(), который выводит страну командировки и продолжительность поездки.
// Позволить сущностям, который подчиняются протоколу, не реализовывать метод expressIndignation() - можно сделать через расширение
// Подчиниться в extension класса Артист протоколу BusinessTrip.
// В классе Художник в расширении реализовать метод expressIndignation(), в котором Художник выражает недовольство о необходимости поездки в командировку.

// 3. Создать протокол PayableBusinessTrip, наследующийся от протокола BusinessTrip, с новыми computed property - salaryInBusinessTrip, salaryCoefficient.
/// properties - `salaryInBusinessTrip`,  `salaryCoefficient` - доступ только на чтение

// Подчиниться в классе Артист протоколу PayableBusinessTrip в уже имеющемся extension.
// salaryInBusinessTrip вычисляется на основе зарплаты за день (если артист отказался ее называть, то зарплата по умолчанию - 80), помноженной на salaryCoefficient, зависящий от стажа работы:
/// - `1-2 года - 1x`,
/// - `3-5 лет - 1.5x`,
/// - `> 5 лет -  2x`.
// Танцорам повысить salaryInBusinessTrip на 10% и доработать метод startTrip(), исходя из требования танцора о минимальной зарплате в 100.

