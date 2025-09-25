/*Requirements:
- Provide a general shape type (concrete class) with an area() method that can be overridden.
- Implement at least three concrete shape types with encapsulated dimensions and validated
constructors (invalid → print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
code).
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
cost to 2 decimals.*/

abstract class Shape {
    double area();
}

class Rectangle extends Shape {
    double length;
    double width;

    Rectangle(this.length, this.width);

    @override
    double area() => length * width;
}   

class Circle extends Shape {
    double radius;
    Circle(this.radius);
    @override
    double area() => 3.14159 * radius * radius;
}
class Triangle extends Shape {
    double base;
    double height;
    Triangle(this.base, this.height);
    @override
    double area() => 0.5 * base * height;
}   

class ShapeCollection {
    List<Shape> shapes = [];
    double totalArea() => shapes.fold(0, (p, s) => p + s.area());
}
void main() {
    ShapeCollection collection = ShapeCollection();
    collection.shapes.addAll([
        Rectangle(10, 5),
        Circle(7),
        Triangle(6, 8)
    ]);
    double area = collection.totalArea();
    double cost = 0;
    if (area <= 50) {
        cost = area * 1.50;
    } else if (area <= 150) {
        cost = 50 * 1.50 + (area - 50) * 1.25;
    } else {
        cost = 50 * 1.50 + 100 * 1.25 + (area - 150) * 1.00;
    }
    print("Total Area: ${area.toStringAsFixed(2)}");
    print("Total Cost: \$${cost.toStringAsFixed(2)}");
}
       
    
