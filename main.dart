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
    var account = BankAccount('ACC001', 'Jane Smith', 1000.0);
    account.deposit(500.0);
    account.withdraw(200.0);
    account.withdraw(1500.0);
    //1.5 Rectangle class with getters
    var rectangle = Rectangle(15.3,74.3);
    print('Width: ${rectangle.width}, Height: ${rectangle.height}');
    print('Area: ${rectangle.area}');
    print('Perimeter: ${rectangle.perimeter}');
}