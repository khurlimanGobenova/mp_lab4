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
    //Task 1.4: Bank Account
    var account = BankAccount('ACC001', 'Jane Smith', 1000.0);
    account.deposit(500.0);
    account.withdraw(200.0);
    account.withdraw(1500.0);
}