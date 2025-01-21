// 繼承
// 物件導向三大特性: 封裝, 繼承, 多型

// 繼承:
// 1. 子類別繼承父類別的屬性和方法
// 2. 子類別可以擴展父類別的屬性和方法, 但不包含繼承構造函數
// 3. 子類別可以覆寫父類別的方法 getter 和 setter

// class Person {
//   String? name;
//   int? age;

//   Person(this.name, this.age);
//   Person.xxx(this.name, this.age);

//   void printInfo() {
//     print("name: $name, age: $age");
//   }
// }

// 子類別Web繼承父類別Person
// class Web extends Person {}

// void main() {
//   Web w = new Web();
//   print(w.name);
//   w.printInfo();
// }

// class Web extends Person {
//   Web(name, age) : super(name, age);
// }

// void main() {
//   Web w = new Web("Alin", 20);
//   w.printInfo();
// }


// class Web extends Person {
//   String? sex;
//   Web(name, age, sex) : super.xxx(name, age) {
//     this.sex = sex;
//   }

//   run() {
//     print("${this.name} ${this.age} ${this.sex}");
//   }
// }

// void main() {
//   Web w = new Web("Harry", 20, "male");
//   w.run();
// }

// 覆寫父類別的方法

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  void printInfo() {
    print("name: $name, age: $age");
  }

  void work() {
    print("${this.name} is working");
  }
}

class Web extends Person {
  Web(name, age) : super(name, age);

  // 子類自己擴展的方法
  run() {
    print("${this.name} is running");
  }

  // 子類覆寫父類的方法
  @override
  void work() {
    print("${this.name} is workingggggggg");
  }
}

void main() {
  Web w = new Web("Harry", 20);
  w.run();
  w.work();
}
