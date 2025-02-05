abstract class Vehicle {
  String name;
  int speed;

  Vehicle(this.name, this.speed);

  void drive(String destination);
}

class Car extends Vehicle {
  Car(String name, int speed) : super(name, speed);

  @override
  void drive(String destination) {
    print("Driving a car to $destination");
  }
}

class Bike extends Vehicle {
  Bike(String name, int speed) : super(name, speed);

  @override
  void drive(String destination) {
    print("Riding a bike to $destination");
  }
}

void main() {
  var car = Car("Toyota", 100);
  car.drive("downtown");

  var bike = Bike("Mountain Bike", 20);
  bike.drive("the park");
}
