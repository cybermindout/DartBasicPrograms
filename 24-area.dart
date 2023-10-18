import 'dart:io';

class Area {
  double circle(double radius) {
    double pi = 22 / 7;
    return pi * radius * radius;
  }

  double square(double side) {
    return side * side;
  }

  double rectangle(double height, double breadth) {
    return height * breadth;
  }

  double triangle(double height, double breadth) {
    return .5 * height * breadth;
  }
}

class MyClass extends Area {
  void menu() {
    print("AREA CALCULATOR");
    print("1.Circle ");
    print("2.Square ");
    print("3.Rectangle ");
    print("4.Triangle ");
    print("5.Exit");

    while (true) {
      print("enter the choice :");
      String choice = stdin.readLineSync() ?? "5";
      switch (choice) {
        case "1":
          calculateCircleArea();
          break;
        case "2":
          calculateSquareArea();
          break;
        case "3":
          calculateRectangleArea();
          break;
        case "4":
          calculateTriangleArea();
          break;
        case "5":
          return;
        default:
          print("enter a valid input");
      }
    }
  }

  void calculateCircleArea() {
    print("enter the radius of the circle");
    double radius = double.parse(stdin.readLineSync() ?? "");
    double area = circle(radius);
    print("Area of the circle is : ${area}");
  }

  void calculateSquareArea() {
    print("enter the length of one side : ");
    double side = double.parse(stdin.readLineSync() ?? "");
    double area = square(side);
    print("Area of the square : ${area}");
  }

  void calculateRectangleArea() {
    print("enter the  breadth : ");
    double breadth = double.parse(stdin.readLineSync() ?? "");
    print("enter the  height : ");
    double height = double.parse(stdin.readLineSync() ?? "");
    double area = rectangle(height, breadth);
    print("The are of rectangle is ${area}");
  }

  void calculateTriangleArea() {
    print("enter the length breadth : ");
    double breadth = double.parse(stdin.readLineSync() ?? "");
    print("enter the length height : ");
    double height = double.parse(stdin.readLineSync() ?? "");
    double area = triangle(height, breadth);
    print("The are of triangle is ${area}");
  }
}

void main() {
  MyClass findArea = MyClass();
  findArea.menu();
}