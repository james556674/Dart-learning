class Person {
  String? name;
  int? age;
  String? gender;
  String? hobby;
  String? _privateInfo;

  Person(this.name, this.age);
  Person.initFullInfo(this.name, this.age, this.gender, this.hobby);
  Person.initPrivateInfo(this.name, this.age, this._privateInfo);

  void printInfo() {
    Map userInfo = new Map();
    userInfo["name"] = this.name;
    userInfo["age"] = this.age;
    if (this.gender != null) {
      userInfo["gender"] = this.gender;
    }
    if (this.hobby != null) {
      userInfo["hobby"] = this.hobby;
    }
    if (this._privateInfo != null) {
      userInfo["privateInfo"] = this._privateInfo;
    }
    print(userInfo);
  }

  void setInfo({String? name, int? age}) {
    this.name = name;
    this.age = age;
  }

  void _privateMethod() {
    print("This is a private method.");
  }

  void publicMethod() {
    print("This is a public method.");
    _privateMethod();
  }
}
