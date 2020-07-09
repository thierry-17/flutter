import 'dart:math';

abstract class Shape {
	factory Shape(String type) {
		if (type == 'circle') return Circle(2);
		if (type == 'square') return Square(2);
		throw 'Can\'t create $type.';
	}

	num get area;
}

class Circle implements Shape {
    final num radius;
    Circle(this.radius);

	@override
    num get area => pi * pow(radius, 2);
	// num get area => pi * pow(radius, 2);
}

class Square implements Shape {
    final num side;
    Square(this.side);

	@override
    num get area => pow(side, 2);
}

// Shape shapeFactory(String type) {
// 	if (type == 'circle') return Circle(2);
// 	if (type == 'square') return Square(2);
// 	throw 'Can\'t create $type.';
// }

abstract class Name {
	factory Name(String name){
		return MyName(name);
	}
}

class MyName implements Name{
	final String name2;
	MyName(this.name2);

	@override
	String toString() => 'My name is ${name2}';
}

void main() {
    final circle = Shape('circle');
    final square = Shape('square');
    print(circle.area);
    print(square);
}