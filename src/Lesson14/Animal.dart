class Animal {
  String? name;
  int? age;
  String? gender;

  Animal(this.name, this.age, this.gender);

  void eat() {
    print("$name is eating");
  }
}