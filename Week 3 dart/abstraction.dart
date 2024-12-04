// Abstract class
abstract class Shape {
  // Abstract method (no implementation)
  double area();
}

// Subclass 1
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;  // Area of circle
  }
}

// Subclass 2
class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;  // Area of rectangle
  }
}

void main() {
  // Create instances of Circle and Rectangle
  Shape circle = Circle(5);
  Shape rectangle = Rectangle(4, 6);

  // Print areas
  print('Circle Area: ${circle.area()}');
  print('Rectangle Area: ${rectangle.area()}');
}
