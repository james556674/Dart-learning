import "Person.dart";

main() {
  Person p = new Person("James", 31);
  p.printInfo();
  // result: name: James, age: 31

  p.setInfo(age: 20, name: "Harry");
  p.printInfo();
  // result: name: Harry, age: 20

  Person fullInfo = new Person.initFullInfo("James", 31, "Male", "Coding");
  fullInfo.printInfo();
  // result: name: James, age: 31, gender: Male, hobby: Coding

}
