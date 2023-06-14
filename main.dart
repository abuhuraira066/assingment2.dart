*) Create a class named “Circle” with properties such as radius. Add getter and setter methods for the radius property. Also, add a method to calculate the circumference of the circle.

import 'dart:math';

class Circle {
  double _radius;

  // Getter for radius
  double get radius => _radius;

  // Setter for radius
  set radius(double value) {
    if (value >= 0) {
      _radius = value;
    } else {
      throw ArgumentError('Radius cannot be negative.');
    }
  }

  // Method to calculate the circumference
  double calculateCircumference() {
    return 2 * pi * _radius;
  }
}

void main() {
  Circle myCircle = Circle();
  myCircle.radius = 5.0; // Set the radius using the setter

  print('Radius: ${myCircle.radius}');
  print('Circumference: ${myCircle.calculateCircumference()}');
}

*) Create a class named “Student” with properties such as name, age, major, and GPA. Add getter and setter methods for each property. Also, add a method to calculate the student’s grade level based on their age.

class Student {
  String _name;
  int _age;
  String _major;
  double _gpa;

  // Getter and setter for name
  String get name => _name;
  set name(String value) => _name = value;

  // Getter and setter for age
  int get age => _age;
  set age(int value) => _age = value;

  // Getter and setter for major
  String get major => _major;
  set major(String value) => _major = value;

  // Getter and setter for GPA
  double get gpa => _gpa;
  set gpa(double value) => _gpa = value;

  // Method to calculate grade level based on age
  String calculateGradeLevel() {
    if (_age >= 18) {
      int grade = (_age - 5) ~/ 5; // Assuming each grade level is 5 years
      return 'Grade ${grade + 1}';
    } else {
      return 'Not in school yet';
    }
  }
}

void main() {
  Student myStudent = Student();
  myStudent.name = 'John Doe';
  myStudent.age = 20;
  myStudent.major = 'Computer Science';
  myStudent.gpa = 3.8;

  print('Name: ${myStudent.name}');
  print('Age: ${myStudent.age}');
  print('Major: ${myStudent.major}');
  print('GPA: ${myStudent.gpa}');
  print('Grade Level: ${myStudent.calculateGradeLevel()}');
}

*) Create a class named “Book” with properties such as title, author, publisher, and price. Add getter and setter methods for each property. Also, add a method to calculate the discount price of the book based on a given percentage.

class Book {
  String _title;
  String _author;
  String _publisher;
  double _price;

  // Getter and setter for title
  String get title => _title;
  set title(String value) => _title = value;

  // Getter and setter for author
  String get author => _author;
  set author(String value) => _author = value;

  // Getter and setter for publisher
  String get publisher => _publisher;
  set publisher(String value) => _publisher = value;

  // Getter and setter for price
  double get price => _price;
  set price(double value) => _price = value;

  // Method to calculate the discount price based on a given percentage
  double calculateDiscountPrice(double percentage) {
    if (percentage >= 0 && percentage <= 100) {
      double discount = _price * (percentage / 100);
      return _price - discount;
    } else {
      throw ArgumentError('Percentage should be between 0 and 100.');
    }
  }
}

void main() {
  Book myBook = Book();
  myBook.title = 'The Great Gatsby';
  myBook.author = 'F. Scott Fitzgerald';
  myBook.publisher = 'Scribner';
  myBook.price = 15.99;

  print('Title: ${myBook.title}');
  print('Author: ${myBook.author}');
  print('Publisher: ${myBook.publisher}');
  print('Price: \$${myBook.price}');
  print('Discounted Price (20% off): \$${myBook.calculateDiscountPrice(20)}');
}


4) Create a class named “Course” with properties such as name, code, instructor, and credits. Add getter and setter methods for each property. Also, add a method to calculate the total cost of the course based on the number of credits and the cost per credit.

class Course {
  String _name;
  String _code;
  String _instructor;
  int _credits;

  // Getter and setter for name
  String get name => _name;
  set name(String value) => _name = value;

  // Getter and setter for code
  String get code => _code;
  set code(String value) => _code = value;

  // Getter and setter for instructor
  String get instructor => _instructor;
  set instructor(String value) => _instructor = value;

  // Getter and setter for credits
  int get credits => _credits;
  set credits(int value) => _credits = value;

  // Method to calculate the total cost of the course based on credits and cost per credit
  double calculateTotalCost(double costPerCredit) {
    return _credits * costPerCredit;
  }
}

void main() {
  Course myCourse = Course();
  myCourse.name = 'Introduction to Computer Science';
  myCourse.code = 'CS101';
  myCourse.instructor = 'John Smith';
  myCourse.credits = 3;

  double costPerCredit = 120.0;

  print('Course Name: ${myCourse.name}');
  print('Course Code: ${myCourse.code}');
  print('Instructor: ${myCourse.instructor}');
  print('Credits: ${myCourse.credits}');
  print('Total Cost: \$${myCourse.calculateTotalCost(costPerCredit)}');
}

5).Create a class named “Bank” with a list of BankAccount objects as a property. Add a method to add a new bank account to the list, and another method to remove a bank account from the list. Also, add a method to find the bank account with the highest balance.

class BankAccount {
  String accountNumber;
  double balance;

  BankAccount(this.accountNumber, this.balance);
}

class Bank {
  List<BankAccount> accounts = [];

  // Method to add a new bank account to the list
  void addBankAccount(BankAccount account) {
    accounts.add(account);
  }

  // Method to remove a bank account from the list
  void removeBankAccount(BankAccount account) {
    accounts.remove(account);
  }

  // Method to find the bank account with the highest balance
  BankAccount findHighestBalance() {
    if (accounts.isEmpty) {
      throw StateError('No bank accounts found.');
    }

    BankAccount highestBalanceAccount = accounts[0];
    for (var i = 1; i < accounts.length; i++) {
      if (accounts[i].balance > highestBalanceAccount.balance) {
        highestBalanceAccount = accounts[i];
      }
    }

    return highestBalanceAccount;
  }
}

void main() {
  Bank myBank = Bank();

  BankAccount account1 = BankAccount('A001', 1000.0);
  BankAccount account2 = BankAccount('A002', 2000.0);
  BankAccount account3 = BankAccount('A003', 1500.0);

  myBank.addBankAccount(account1);
  myBank.addBankAccount(account2);
  myBank.addBankAccount(account3);

  BankAccount highestBalanceAccount = myBank.findHighestBalance();

  print('Bank Account with the Highest Balance:');
  print('Account Number: ${highestBalanceAccount.accountNumber}');
  print('Balance: \$${highestBalanceAccount.balance}');
}


6) Write a program that takes a string as input and checks if it is a palindrome. A palindrome is a string that reads the same forwards and backwards. For example, “racecar” is a palindrome.
 
  bool isPalindrome(String input) {
  String reversed = input.split('').reversed.join('');
  return input == reversed;
}

void main() {
  String userInput = 'racecar';

  if (isPalindrome(userInput)) {
    print('$userInput is a palindrome.');
  } else {
    print('$userInput is not a palindrome.');
  }
}
