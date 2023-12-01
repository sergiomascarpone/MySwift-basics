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


// Класс с базовым инициализатором
class Person {
    var name: String

    init(name: String) {
        self.name = name
    }
}

// Класс с дополнительным инициализатором
class Car {
    var brand: String
    var model: String

    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }

    convenience init(brand: String) {
        self.init(brand: brand, model: "Unknown")
    }
}

// Класс с инициализатором, принимающим опциональный параметр
class Book {
    var title: String
    var author: String

    init(title: String, author: String?) {
        self.title = title
        self.author = author ?? "Unknown Author"
    }
}

// Пример использования классов и их инициализаторов
let person = Person(name: "John Doe")
print("Person: \(person.name)")

let car1 = Car(brand: "Toyota", model: "Camry")
print("Car 1: \(car1.brand) \(car1.model)")

let car2 = Car(brand: "Honda")
print("Car 2: \(car2.brand) \(car2.model)")

let book1 = Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald")
print("Book 1: \(book1.title) by \(book1.author)")

let book2 = Book(title: "1984", author: nil)
print("Book 2: \(book2.title) by \(book2.author)")


// MARK: - Task 2 - Structure
// Используйте решение и предыдущей домашней работы
// Если домашнее было не выполнено, тогда реализуйте Ваше решение ниже.

// 1. Создайте структуру Студент.
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этой структуры и заполните их данными.
// Положите их всех в массив (журнал).

struct Student {
    let name: String
    let lastName: String
    let averageScore: Int
}

func studentsData(students: [Student]) {
    for (index, student) in students.enumerated() {
        let studentNumber = index + 1
        print("Srudent№:\(studentNumber). Name: \(student.name). LastName: \(student.lastName). AverageScore: \(student.averageScore)")
//лишние принты убрать можно
//        print("Name \(student.name)")
//        print("LastNme \(student.lastName)")
//        print("AverageScore \(student.averageScore)")
    }
}


var students: [Student] = [
    Student(name: "Alesja", lastName: "Nikolaevna", averageScore: 3),
    Student(name:"Maksim", lastName: "Borisovich", averageScore: 4),
    Student(name: "Egor", lastName: "Sergeevich", averageScore: 5),
    Student(name: "Sergey", lastName: "Olegivich", averageScore: 4)
]


studentsData(students: [])


// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

//func studentsData(students: [Student]) {
//    for (index, student) in students.enumerated() {
//        let studentNumber = index + 1
//        print("Srudent№:\(studentNumber). Name: \(student.name). LastName: \(student.lastName). AverageScore: \(student.averageScore)")
////        print("Name \(student.name)")
////        print("LastNme \(student.lastName)")
////        print("AverageScore \(student.averageScore)")
//
//        // ТУТ НЕ БЫЛО ДВУХ СКОБОЧЕК
//    }
//}

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

//Сделал вот так, по примеру пред.задач, но хотел попробовать вывести в таком же формате, как и ранее:
//Srudent№:1. Name: Alesja. LastName: Nikolaevna. AverageScore: 3
//Srudent№:2. Name: Maksim. LastName: Borisovich. AverageScore: 4
//Srudent№:3. Name: Egor. LastName: Sergeevich. AverageScore: 5
//Srudent№:4. Name: Sergey. LastName: Olegivich. AverageScore: 4
//но у меня не получилось, я думал притянуть функцию, но у меня ничего не получалось и всё крашилось((

let sortedAverageScore = students.sorted { $1.averageScore < $0.averageScore }
print("\nSorted by average score:")
for student in sortedAverageScore {
    print("Student: \(student.name), \(student.lastName), \(student.averageScore)")
}

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.
//
//let sortedByLastName = students.sorted { $0.lastName < $1.lastName }
//print("\nSorted by last name:")
//for student in sortedByLastName {
//    print("Student: \(student.name), \(student.lastName), \(student.averageScore)")
//}

// вот такой еще вариант попробовал в сортировки, но не знаю правильно ли(
//students.sort {
//    if $0.lastName == $1.lastName {
//        return $0.name < $1.name
//    } else {
//        return $0.lastName < $1.lastName
//    }
//}
//for student in students {
//    print("Student: \(student.name), \(student.lastName), \(student.averageScore)")
//}


// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?
// Распечатайте оба массива.

//students у тебя и так массив
//var studentArray = students
//
//studentArray[0] = Student(name: "NewName", lastName: "NewLastName", averageScore: 9)
//studentArray[2] = Student(name: "NewName1", lastName: "NewLastName1", averageScore: 8)
//
//print("Original Array:")
//print(students)
//
//print("\nModified Array:")
//print(studentArray)


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

//func studentsData(students: [Student]) {
//    for (index, student) in student.enumerated() {
//        let studentNumber = index + 1
//        print("Student№: \(studentNumber). Name: \(student.name). LastName: \(student.lastName). YearOfBirth: \(student.yearOfBirth). AverageScore: \(student.averageScore)")
////        print("Name \(student.name)")
////        print("LastName \(student.lastName)")
////        print("YearOfBirth \(student.yearOfBirth)")
////        print("AverageScore \(student.averageScore)")
//    }
//}

//let student: [Student] = [
//    Student(name: "Sergey", lastName: "Maximov", yearOfBirth: 29, averageScore: 5),
//    Student(name: "Viktoria", lastName: "Olegovna", yearOfBirth: 27, averageScore: 3.7),
//    Student(name: "Anton", lastName: "Kereev", yearOfBirth: 24, averageScore: 3.9),
//    Student(name: "Vasilij", lastName: "Nikitin", yearOfBirth: 30, averageScore: 4.4),
//    Student(name: "Pavel", lastName: "Vladimirovich", yearOfBirth: 28, averageScore: 5),
//    Student(name: "Svetlana", lastName: "Philipenko", yearOfBirth: 27, averageScore: 4.7)
//]

//studentsData(students: [])

// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

//func studentsJournal(students: [Student]) {
//    for (index, student) in student.enumerated() {
//        let studentNumber = index + 1
//        print("Student№:\(studentNumber). Name: \(student.name), LastName: \(student.lastName), YearOfBirth: \(student.yearOfBirth), AverageScore: \(student.averageScore)")
//    }
//}
//
//studentsJournal(students: student)

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
//
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

// MARK: по аналогии сделай для классов 5 задание. для структур я написала

// MARK: - Резюмируйте, чем отличаются классы от структур и когда что лучше использовать?

// Структуры это значимый тип, а классы ссылочный тип. Если по документации, то по умолчанию лучше структуры. Нам проще анализировать свой код, так как структура не может быть изменена другой частью кода.
// С помощью класса, мы можем четко опредеоить родительско-дочернюю связь между классом и подклассом.


// MARK: - прочитать
//Классы - ссылочные типы. Когда вы передаете или присваиваете класс, передается ссылка на объект.
//Структуры - значимые типы. Они передаются по значению, создавая копию.
//
//Классы - могут поддерживать наследование, т.е. создавать подклассы.
//Структуры - не поддерживают наследование.
//
//Классы передаются по ссылке. Изменения в одном экземпляре отражаются на других, так как они ссылаются на один и тот же объект в памяти.
//Структуры передаются по значению. Каждый экземпляр - это отдельная копия данных.


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

// MARK: посмотреть
//Поскольку currentData и currentYear используются только один раз, можно инициализировать их непосредственно в соответствующих выражениях.
//Вместо использования calendar.component(.year, from: currentData) и calendar.component(.month, from: currentData),  можно использовать calendar.dateComponents([.year, .month], from: currentData) для получения сразу нескольких компонентов.
//Можно использовать условный оператор ? : для более компактного кода.

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
//    var age: Int {
//        let currentData = Date()
//        let calendar = Calendar.current
//        let components = calendar.dateComponents([.year, .month], from: currentData)
//
//        let age = components.year! - birthday.year
//
//        return (components.month! < birthday.month || (components.month! == birthday.month && calendar.component(.day, from: currentData) < birthday.day)) ? age - 1 : age
//    }
//
//    var yearsOfStudy: Int {
//        return max(0, age - 6)
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

// MARK: нет проверок для установленных ограничений (например, проверки возраста, длины имени и фамилии).
//
//    init(name: String, lastName: String, age: Int, growth: Int, weight: Int) {
// Добавляем проверки для соответствия ограничениям
//       self.name = name.count >= Person.minNameLength && name.count <= Person.maxNameLength ? name : "InvalidName"
//       self.lastName = lastName.count >= Person.minNameLength && lastName.count <= Person.maxNameLength ? lastName : "InvalidLastName"
//       self.age = (age >= Person.minAge && age <= Person.maxAge) ? age : 0
//       self.growth = max(growth, Person.minGrowth)
//       self.weight = max(weight, Person.minWeight)
//
//       Person.count += 1
////        self.name = name
////        self.lastName = lastName
////        self.age = age
////        self.growth = growth
////        self.weight = weight
////
////        Person.count += 1
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

//MARK:  необходимо добавить реализацию для управления свойством voice, чтобы удовлетворить требования задания.
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

// MARK: вот вариант
class Cat {
    private var voice: String?

    var name: String {
        didSet {
            // Ограничиваем изменение имени только для чтения
            name = oldValue
        }
    }

    var color: String
    var gender: String
    var size: String

    init(name: String, color: String, gender: String, size: String) {
        self.name = name
        self.color = color
        self.gender = gender
        self.size = size
    }

    func makeSound() {
        if let voice = voice {
            print("\(name) says \(voice)")
        } else {
            print("\(name) is silent")
        }
    }
}

class OrangeCat: Cat {

    init(name: String, gender: String, size: String) {
        super.init(name: name, color: "Orange", gender: gender, size: size)
    }
}

class BlackCat: Cat {

    init(name: String, gender: String, size: String) {
        super.init(name: name, color: "Black", gender: gender, size: size)
    }
}

let garfieldCat = OrangeCat(name: "Garfield", gender: "male", size: "small")
print(garfieldCat.name)
garfieldCat.makeSound()

let oliviaCat = BlackCat(name: "Olivia", gender: "female", size: "medium")
print(oliviaCat.name)
oliviaCat.makeSound()


// MARK: - Task 7 - Overriding
// MARK: надо сделать:
// использовать общий конструктор в родительском классе GeometricFigure для установки описания и цвета, а затем вызывать этот конструктор в подклассах.
//
//Используй более информативные имена переменных и констант, чтобы сделать код более понятным.
//
//Вместо print в методе calculateArea, возможно, стоит возвращать значение площади, чтобы можно было использовать результат при необходимости.


// 1. Создайте класс Геометрическая фигура и реализуйте в нем метод подсчета площади фигуры
// 2. Создайте 5 классов-наследников: Круг, Квадрат, Треугольник, Трапеция и Ромб
// 3. Переопределите метод подсчета площади фигуры и реализуйте расчет этой площади для каждой фигуры
// 4. Все результаты вывести в консоль.
// 5. Добавьте переменную Description, которая характеризует тип фигуры
// 6. Переопределите ее для каждой фигуры и выведите описание каждой фигуры в консоль
// 7. Определите свойство цвет для каждой фигуры
// 8. Если фигуры - Круг, Треугольник или Ромб - задайте им красный цвет
// 9. Если фигуры - Квадрат или Трапеция - задайте им зеленый цвет

//ну тут пришлось мне воспользоваться поиском, и полностью всё переделал. Самому конечно до самостоятельного решения такого мне еще далеко(((

//// Родительский класс GeometricFigure
//class GeometricFigure {
//    let description: String
//    var color: String = "Red"
//    
//    init(description: String) {
//        self.description = description
//    }
//    
//    func calculateArea() -> Double {
//        return 0.0
//    }
//}
//
//// Класс Круг
//class Circle: GeometricFigure {
//    let radius: Double
//    
//    init(radius: Double) {
//        self.radius = radius
//        super.init(description: "Circle")
//        self.color = "Red"
//    }
//    
//    override func calculateArea() -> Double {
//        return Double.pi * radius * radius
//    }
//}
//
//// Класс Квадрат
//class Square: GeometricFigure {
//    let sideLength: Double
//    
//    init(sideLength: Double) {
//        self.sideLength = sideLength
//        super.init(description: "Square")
//        self.color = "Green"
//    }
//    
//    override func calculateArea() -> Double {
//        return sideLength * sideLength
//    }
//}
//
//// Класс Треугольник
//class Triangle: GeometricFigure {
//    let base: Double
//    let height: Double
//    
//    init(base: Double, height: Double) {
//        self.base = base
//        self.height = height
//        super.init(description: "Triangle")
//        self.color = "Red"
//    }
//    
//    override func calculateArea() -> Double {
//        return 0.5 * base * height
//    }
//}
//
//// Класс Трапеция
//class Trapezoid: GeometricFigure {
//    let base1: Double
//    let base2: Double
//    let height: Double
//    
//    init(base1: Double, base2: Double, height: Double) {
//        self.base1 = base1
//        self.base2 = base2
//        self.height = height
//        super.init(description: "Trapezoid")
//        self.color = "Green"
//    }
//    
//    override func calculateArea() -> Double {
//        return 0.5 * (base1 + base2) * height
//    }
//}
//
//// Класс Ромб
//class Rhombus: GeometricFigure {
//    let diagonal1: Double
//    let diagonal2: Double
//    
//    init(diagonal1: Double, diagonal2: Double) {
//        self.diagonal1 = diagonal1
//        self.diagonal2 = diagonal2
//        super.init(description: "Rhombus")
//        self.color = "Red"
//    }
//    
//    override func calculateArea() -> Double {
//        return 0.5 * diagonal1 * diagonal2
//    }
//}
//
//// Создание объектов и вывод результатов
//let circle = Circle(radius: 5.0)
//print("\(circle.description) - Площадь: \(circle.calculateArea()), Цвет: \(circle.color)")
//
//let square = Square(sideLength: 4.0)
//print("\(square.description) - Площадь: \(square.calculateArea()), Цвет: \(square.color)")
//
//let triangle = Triangle(base: 3.0, height: 6.0)
//print("\(triangle.description) - Площадь: \(triangle.calculateArea()), Цвет: \(triangle.color)")
//
//let trapezoid = Trapezoid(base1: 4.0, base2: 6.0, height: 5.0)
//print("\(trapezoid.description) - Площадь: \(trapezoid.calculateArea()), Цвет: \(trapezoid.color)")
//
//let rhombus = Rhombus(diagonal1: 4.0, diagonal2: 6.0)
//print("\(rhombus.description) - Площадь: \(rhombus.calculateArea()), Цвет: \(rhombus.color)")


// MARK: - Task 8 - Extensions
// 1. Создайте расширение для Int со свойствами isNegative, isPositive
// 2. Добавьте свойство, которое возвращает количество символов в числе
// 3. Добавьте типу String метод trimText(), чтобы он мог отсекать N последних символов
// !!! Обратите внимание, как будет вести себя ваша программа, если вы попытаетесь удалить больше символов, чем есть в строке

// 4. Добавьте типу String метод truncate(length: Int), который определит, что строка длиннее, чем length
// А затем отсечет лишние символы и заменит их на "..."

//extension Int {
//    var isNegative: Bool {
//        return self < 0
//    }
//    
//    var isPositive: Bool {
//        return self > 0
//    }
//    
//    var characterCount: Int {
//        return String(self).count
//    }
//}
//
//
//extension String {
//    func trimText(lenght: Int) -> String {
//        guard lenght <= self.count else {
//            return self
//        }
//        let endIndex = self.index(self.endIndex, offsetBy: -lenght)
//        return String(self[..<endIndex])
//    }
//    
//    func truncate(lenght: Int) -> String {
//        guard self.count > lenght else {
//            return self
//        }
//        let endIndex = self.index(self.startIndex, offsetBy: lenght)
//        return self[..<endIndex] + "..."
//    }
//}
//
//
//let number = 12345
//print(number.isPositive)
//print(number.isNegative)
//print(number.characterCount)
//
//let text = "Hello, world!"
////print(text.trimText(length: 5))
//print(text.truncate(lenght: 10))

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


// Создаем перечисление для страны работы
enum WorkCountry {
    case belarus
    case russia
    case ukraine
    case other(String)
}

// Базовый класс "Артист"
class Artist {
    struct Name {
        let firstName: String
        let lastName: String
    }
    
    let name: Name
    var age: Int {
        didSet {
            if age < 0 {
                age = 0
            }
        }
    }
    var workCountry: WorkCountry
    var experience: Int
    var weeklySalary: Double?
    var daySalary: Double {
        if let weeklySalary = weeklySalary {
            return weeklySalary / 5
        } else {
            return 0
        }
    }
    
    var percentageOfWorkLife: Double {
        return Double(experience) / Double(age) * 100
    }
    
    init(name: Name, age: Int, workCountry: WorkCountry, experience: Int, weeklySalary: Double?) {
        self.name = name
        self.age = max(0, age)
        self.workCountry = workCountry
        self.experience = experience
        self.weeklySalary = weeklySalary
    }
}

// Пример использования
let artistName = Artist.Name(firstName: "Иван", lastName: "Иванов")
let artist = Artist(name: artistName, age: 30, workCountry: .russia, experience: 10, weeklySalary: 1000)
print(artist.daySalary)
print(artist.percentageOfWorkLife)


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

//некоторые моменты всё еще не смог сделать сам, без помощи интернета

// Класс Артист

//class Musician: Artist {
//    var favoriteInstrument: String
//
//    init(favoriteInstrument: String) {
//        self.favoriteInstrument
//        self.favoriteInstrument = favoriteInstrument
//    }
//
//    /*override static*/ func displayClassName() {
//        print("Class name: Musician")
//    }
//
//    /*override*/ func perform() {
//        print("Musician performing with their faxvorite instrument: \(favoriteInstrument)")
//    }
//}
//
//class Dancer: Artist {
//    var dailySalary: Int
//
//    init(dailySalary: Int) {
//        self.dailySalary = dailySalary
//    }
//
//    /*override static*/ func displayClassName() {
//        print("Class name: Dancer")
//    }
//
//    /*override*/ func perform() {
//        if dailySalary < 100 {
//            print("Dancer refuses to perform, the salary is too low")
//        } else {
//            print("Dancer performing")
//        }
//    }
//}
//
//class Painter: Artist {
//    var stageName: String
//
//    init(stageName: String) {
//        self.stageName = stageName
//    }
//
//    /*override static*/ func displayClassName() {
//        print("Class name: Painter")
//    }
//
//    /*override*/ func perform() {
//        print("Painter performing")
//    }
//}
//
////Создан экземпляров классов
//let musician1 = Musician(favoriteInstrument: "Violin")
//let musician2 = Musician(favoriteInstrument: "Piano")
//let dancer1 = Dancer(dailySalary: 100)
//let dancer2 = Dancer(dailySalary: 70)
//let painter1 = Painter(stageName: "Artiste")
//let painter2 = Painter(stageName: "Maestro")
//
//
////Массив типа Артист
//let artist: [Artist] = [musician1, musician2, dancer1, dancer2, painter1, painter2]
//
////Вызов метода для каждого эллемента
//for artist in artist {
//    artist.perform()
//}


// 2. Создать протокол BusinessTrip со свойствами страна, продолжительность поездки, методы startTrip(), endTrip() и expressIndignation().
// Сделать реализацию по умолчанию метода startTrip(), который выводит страну командировки и продолжительность поездки.
// Позволить сущностям, который подчиняются протоколу, не реализовывать метод expressIndignation() - можно сделать через расширение
// Подчиниться в extension класса Артист протоколу BusinessTrip.
// В классе Художник в расширении реализовать метод expressIndignation(), в котором Художник выражает недовольство о необходимости поездки в командировку.

//// Создание протокола BusinessTrip
//protocol BusinesTrip {
//    var country: String
//    var duration: Int
//    
//    func startTrip()
//    func endTrip()
//}
//// Реализация расширения по умолчанию для метода
//startTrip()
//extension BusinesTrip {
//    func startTrip() {
//        print("Отправляемся в командировку в \(country) на \(duration) дней.")
//    }
//}
//
//extension Artist: BusinesTrip {
//    func endTrip() {
//        print("Завершаем командировку.")
//    }
//}
//
//// Создание расширения для реализации метода expressIndignation
//
//extension Painter: BusinesTrip {
//    var country: String {
//        return "Название страны"
//    }
//    
//    var duration: Int {
//        return 8
//    }
//    
//    func endTrip() {
//        print("Завершаем командировку.")
//    }
//    
//    func expressIndignation() {
//        print("Я художник, мне необходимо быть в студии, а не в командировке!")
//    }
//}


// 3. Создать протокол PayableBusinessTrip, наследующийся от протокола BusinessTrip, с новыми computed property - salaryInBusinessTrip, salaryCoefficient.
/// properties - `salaryInBusinessTrip`,  `salaryCoefficient` - доступ только на чтение

// Подчиниться в классе Артист протоколу PayableBusinessTrip в уже имеющемся extension.
// salaryInBusinessTrip вычисляется на основе зарплаты за день (если артист отказался ее называть, то зарплата по умолчанию - 80), помноженной на salaryCoefficient, зависящий от стажа работы:
/// - `1-2 года - 1x`,
/// - `3-5 лет - 1.5x`,
/// - `> 5 лет -  2x`.
// Танцорам повысить salaryInBusinessTrip на 10% и доработать метод startTrip(), исходя из требования танцора о минимальной зарплате в 100.

