// Basic function examples
void main() {

  var sampleUsers = [
    {"name": "John", "age": 30, "gender": "male"},
    {"name": "Jane", "age": 25, "gender": "female"},
    {"name": "Mary", "age": 50, "gender": "female"},
  ];

  sampleUsers.forEach((user) {
    if (checkDiscountQualification(
      age: user["age"],
      name: user["name"],
      gender: user["gender"],
    )) {
      user["discount"] = 0.1;
    } else {
      user["discount"] = 0;
    }
  });

  print(sampleUsers);
}

// an example of a function that adding discount for female and more than 40 years old with 10%
bool checkDiscountQualification({
  name = "",
  age = 0,
  gender = "",
}) {
  if (gender == "female" && age > 40) {
    return true;
  }
  return false;
}






