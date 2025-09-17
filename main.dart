//CLASSES
//1.2 Book Class
class Book{
    String title;
    String author;
    int numberOfPages;

    Book(this.title, this.author, this.numberOfPages);
}

//1.3 Student Class
class Student{
    String name;
    int age;
    List<double> grades;

    Student(this.name, this.age, this.grades);
    double calculateAverageGrade(List<double> grades){
        if (grades.isEmpty) return 0.0;
        double sum = 0;
        for (int number in grades){
            sum+=number;
        }
       return sum/grades.length;
    }
}
//1.4 Bank Account 
class BankAccount{
    String accountNumber;
    String accountHolderName;
    double balance;

    BankAccount(title.accountNumber, this.accountHolderName, this.balance);

    void deposit(double amount){
        if (amount >0){
            balance += amount;
            print("Deposited \$${amount.toString}. New balance: \$${balance.toString}");
        }else{
            print("Invalid deposit amount");
        }
    }
    void withdraw(double amount){
        if(amount>0){
            if (balance >=0){
                balance -=amount;
                print("Withdrew \$${amount.toString}. New balance: \$${balance.toString}");
            }else{
                print("Error: Cannnot withdraw the amount entered.")
            }
        }else{
            print("Invalid withdrawal amount");
        }
    }
}
//1.5 Rectangle class with getters
class Rectangle{
    double width;
    double height;

    Rectangle(this.width, this.height);
    
    double get area => width*height;
    double get perimter => (width + height)*2;
}

//ENUMS
//2.2 Order Status
enum OrderStatus{pending,processing,shipped,delivered,cancelled }

//2.3 Traffic Light 
enum TrafficLight{red, yellow, green}
String getTrafficLightAction(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      return "Stop";
    case TrafficLight.yellow:
      return "Caution";
    case TrafficLight.green:
      return "Go";
  }
}

//2.4 User Roles
enum UserRole{admin,editor,guest}
class User(){
    String name;
    UserRole role;

    bool hasEditPermission(){
        retutn role == UserRole.admin || role == UserRole.editor;
    }
}

//2.5Enums with Properties
enum TrafficLightDuration(red,yellow,green)
int get durationInSeconds {
    switch (this) {
      case TrafficLight.red:
        return 30;
      case TrafficLight.yellow:
        return 5;
      case TrafficLight.green:
        return 45;
    }
  }

//INHERITANCE
//3.2 Animal sounds
class Animal(){
    void makeSound(){
        print("Animal Sound");
    }
}
class Dog extends Animal(){
    @override
    void makeSound(){
        print("Woof");
    }
}
class Cat extends Animal(){
    @override
    void makeSound(){
        print("Meow");
    }
}

//3.3 Shape hierarchy
class Shape(){
    String color;
    Shape(this.color);
}
class Circle extends Shape(){
    double radius;
    Circle(this.radius, String color):super(color);
}
class Square extends Shape(){
    double sideLength;
    Square(this.sideLength, String color):super(color);
}

//3.4 Employee and Manager
class Employee(){
    String name;
    double baseSalary;
    Employee(this.name, this.baseSalary);
    
}
class Manager extends Employee(){
    double bonus;
    @override
}
//3.4 Employee and Manager
class Employee(){
    String name;
    double baseSalary;
    Employee(this.name, this.baseSalary);
    
}
class Manager extends Employee(){
    double bonus;
    Manager(String name, double baseSalary, this.bonus): super(name,baseSalary);

    @override
    double calculateSalary(){
        return baseSalary+bonus;
    }
}

//3.5 Library items
class LibraryItem(){
    String title;
    String id;
    LibraryItem(this.title, this.id);
    String getDetails() {
        return 'Title: $title, ID: $id';
    }
}
class Book extends LibraryItem(){
    String author;
    Book(this.author, String title, String id): super(title, id);
    @override
    String getDetails(){
        return "Book Title: $title, ID: $id, Author: $author";
    }
}
class DVD extends LibraryItem(){
    String director;
    DVD(this.director, String title, String id): super(title, id);
    @override
    String getDetails(){
        return "DVD Title: $title, ID: $id, Author: $author";
    }
}

//MIXINS
//4.2 Flyer mixin
mixin Flyer(){
    void swim(){
        print("Taking off!");
    }
}
class Bird with Flyer(){
    String species;
    Bird(this.species);
}
class Plane with Flyer(){
    String model;
    Plane(this.model);
}

//4.3 Logger Mixin
mixin Logger(){
    void log(String message){
        print("[LOG] $message");
    }
}
class DataService with Logger(){
    void fetchData() {
    log("Fetching data");
    print("Data fetched successfully");
  }
}

//4.4 Validator mixin
mixin Validator(){
    bool isEmailValid(String email){
        return email.contains('@') && email.contains('.');
    }
    bool isPasswordStrong(String password){
        if(password.length()>=8){
            return true;
        }
        else return false
    }
}
class UserSignUp with Validator(){
    void validateUser(String email, String password){
        print("Email valid: ${isEmailValid(email)}");
        print("Password strong: ${isPasswordStrong(password)}");
    }
}
//4.5 Combining Mixins
mixin Performer {
  void perform() {
    print("Performing on stage!");
  }
}
mixin Musician {
  void playInstrument() {
    print("Playing an instrument!");
  }
}
class Artist {
  String name;
  Artist(this.name);
}
class Dancer extends Artist with Performer {
  Dancer(String name) : super(name);
}
class Guitarist extends Artist with Performer, Musician {
  Guitarist(String name) : super(name);
}
//MAIN FUNCTION
void main(){
    //1.3 Book class
    var myBook = Book('Rich Dad', 'Robert Kiyosaki', 200);
    print("Title: ${myBook.title}, Author: ${myBook.author}, Number of pages: ${myBook.numberOfPages} ");
    //1.3 Student Class
    var student = Student("Tom", 19, [85.2,76.9,90.4,98.2]);
    print("Name: ${student.name}, Age:${student.age}");
    print("Average grade: ${student.calculateAverageGrade().toString()}");
    //1.4: Bank Account
    var account = BankAccount("ACC12", "Anya Pokrov", 1000.0);
    account.deposit(500.0);
    account.withdraw(200.0);
    account.withdraw(1500.0);
    //1.5 Rectangle class with getters
    var rectangle = Rectangle(15.3,74.3);
    print("Width: ${rectangle.width}, Height: ${rectangle.height}");
    print("Area: ${rectangle.area}");
    print("Perimeter: ${rectangle.perimeter}");
    //ENUMS
    //2.2 Order status
    OrderStatus myOrder = OrderStatus.processing;
    print("Order status: $myOrder"                                                                      );
    //2.3 Traffic light
    for (TrafficLight light in TrafficLight.values) {
        print('$light: ${getTrafficLightAction(light)}');
    }
    //2.4 User Roles
    var admin = User("Amina", UserRole.admin);
    var editor = User("Bobur", UserRole.editor);
    var guest = User("Madina", UserRole.guest);
    print('${admin.name} (${admin.role}) has edit permission: ${admin.hasEditPermission()}');
    print('${editor.name} (${editor.role}) has edit permission: ${editor.hasEditPermission()}');
    print('${guest.name} (${guest.role}) has edit permission: ${guest.hasEditPermission()}');
    //2.5 Traffic light extension
    for (TrafficLight light in TrafficLight.values) {
        print("${light.name}: ${light.durationInSeconds} seconds");
    }
    //INHERITANCE
    //3.2 Animal sounds
    var dog = Dog();
    var cat = Cat();
    dog.makeSound();
    cat.makeSound();
    //3.3 Shape hierarchy
    var circle = Circle("purple", 5.0);
    var square = Square("yellow", 4.0);
    print("Circle: ${circle.color}, radius: ${circle.radius}");
    print("Square: ${square.color}, side: ${square.sideLength}");
    //3.4 Employee and Manager
    var employee = Employee("John", 50000);
    var manager = Manager("Tom", 60000, 15000);
    print('${employee.name} salary: \$${employee.calculateSalary()}');
    print('${manager.name} salary: \$${manager.calculateSalary()}');
    //3.5 Library Items
     var bookItem = BookItem("After the funeral", "A001", "Agatha Cristie");
    var dvd = DVD("Interstellar", "I102", "Christopher Nolan");
    print(bookItem.getDetails());
    print(dvd.getDetails());
    
    //MIXINS
    //4.2 Flyer Mixin
    var bird = Bird("Crow");
    var plane = Plane("Airbus Neo 320");
    bird.fly();
    plane.fly();
    //4.3 Logger Mixin
    var dataService = DataService();
    dataService.fetchData();
    // Task 4.4: Validator Mixin
    var userSignup = UserSignup();
    userSignup.validateUser("someone123@newuu.uz", "qwerty12");
    userSignup.validateUser("invalid_email", "weak");
    //4.5 Combining Mixins
    var dancer = Dancer("Camelia");
    var guitarist = Guitarist("Timothy");
    dancer.perform();
    guitarist.perform();
    guitarist.playInstrument();
}
