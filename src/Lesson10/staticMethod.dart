// static method can only access static properties
// static method can be called without creating an instance of the class
// non-static method can access both static and non-static properties
// non-static method can only be called with an instance of the class

class Person {
  static String staticName = "John";
  String nonStaticName = "John";
  static int staticAge = 20;
  int nonStaticAge = 20;

  void helloWorld() {
    print("Hello, World");
  }

  // static method
  static void sayHelloStatic() {
    print("Hello, $staticName, you are $staticAge years old");
  }

  // non-static method
  void sayHelloNonStatic() {
    print("Hello, $nonStaticName, you are $nonStaticAge years old");
  }
}

void main() {
  Person.sayHelloStatic();
  Person.staticName = "Jane";
  Person.sayHelloStatic();

  var newPerson = new Person();
  newPerson.sayHelloNonStatic();
  newPerson.nonStaticName = "Jane";
  newPerson.sayHelloNonStatic();
}

