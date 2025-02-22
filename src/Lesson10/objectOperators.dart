// Some Object Operators

// 1. ?  條件運算條件
// 2. as 類型轉換
// 3. is 類型檢查
// 4. .. 串聯運算符



class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  void printInfo() {
    print("Name: $name, Age: $age");
  }
}


// 1. ?  條件運算條件
// void main() {
//   Person person = Person("John", 20);
//   person.printInfo();
//   print(a.age);
// }

// 2. is 類型檢查
// void main () {
//   Person p = new Person("John", 20);
//   if (p is Person) {
//     print("p is Person");
//   }
// }

// 3. as 類型轉換
// void main() {
//   var p1;
//   p1 = "";
//   p1 = new Person("John", 20);

//   (p1 as Person).printInfo();
// }

// 4. .. 串聯運算符

void main() {
  Person p2 = new Person("John", 20);
  // p2.name = "Harry";
  // p2.printInfo();

  p2
    ..name = "Harry"
    ..age = 21
    ..printInfo();
}
