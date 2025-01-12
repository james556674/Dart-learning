// List is a collection of objects in a sequence

void main() {

  // var fruits = <String>["apple", "banana"];
  // print("Print List: $fruits");
  // print("Print List Length: ${fruits.length}");
  // print("Print List is Empty: ${fruits.isEmpty}");
  // print("Print List is Not Empty: ${fruits.isNotEmpty}");
  // print("Print List Reversed: ${fruits.reversed}");

  // fruits.add("grape");
  // print("Print List add: $fruits");

  // fruits.addAll(["orange", "pear"]);
  // print("Print List addAll: $fruits");

  // final indexOfBanana = fruits.indexOf("banana");
  // print("Print List indexOf banana: $indexOfBanana");

  // fruits.remove("banana");
  // print("Print List remove: $fruits");

  // fruits.removeAt(0);
  // print("Print List removeAt: $fruits");

  // // startIndex, endIndex, value
  // fruits.fillRange(0, 2, "kiwi");
  // print("Print List fillRange: $fruits");

  // fruits.insert(1, "kiwi");
  // print("Print List insert: $fruits");

  // fruits.insertAll(0, ["kiwi", "orange"]);
  // print("Print List insertAll: $fruits");

  // final joinedFruits = fruits.join(", ");
  // print("Print List joinedFruits: $joinedFruits");

  // const stringFruits = "apple,banana,orange,pear";
  // final splitFruits = stringFruits.split(",");
  // print("Print List splitFruits: $splitFruits");


  // // Set 
  // // Notes: can't have duplicate values

  // var uniqueFruits = new Set<String>();
  // uniqueFruits.add("apple");
  // uniqueFruits.add("banana");
  // uniqueFruits.add("banana");
  // print("Print List uniqueFruits: $uniqueFruits");

  // // Map
  // // Notes: key-value pairs
  // var user = {
  //   "name": "John",
  //   "age": 25,
  // };
  // print("Print Map user: $user");

  // print("keys ${user.keys.toList()}");
  // print("values ${user.values.toList()}");
  // print("user is empty ${user.isEmpty}");
  // print("user is not empty ${user.isNotEmpty}");

  // user.addAll({
  //   "email": "john@example.com",
  // });
  // user.remove("age");
  // print("Print Map user: $user");

  // print("contains email key ${user.containsKey("email")}");
  // print("contains email value ${user.containsValue("john@example.com")}");


  // 遍歷方法
  // forEach

  // const fruitsForMapTest = ["apple", "banana", "orange"];

  // // ==== for loop ====
  // print("========== for loop ==========");
  // for (var i = 0; i < fruitsForMapTest.length; i++) {
  //   print("Print List forEach: ${fruitsForMapTest[i]}");
  // }

  // // ==== forEach ====
  // print("========== forEach ==========");
  // fruitsForMapTest.forEach((element) {
  //   print("Print List forEach: $element");
  // });
  // // map
  // print("========== map ==========");
  // var mapFruits = fruitsForMapTest.map((e) => e);
  // print("Print List map: $mapFruits");
  // print("Print List map List: ${mapFruits.toList()}");

  // // where
  // print("========== where ==========");
  // var whereFruits = mapFruits.where((e) => e.length == 5);
  // print("Print List where: $whereFruits");
  // print("Print List where List: ${whereFruits.toList()}");

  // // any
  // print("========== any ==========");
  // var anyFruits = mapFruits.any((e) => e.length == 5);
  // print("Print List any: $anyFruits");

  // // every
  // print("========== every ==========");
  // var everyFruits = mapFruits.every((e) => e.length == 5);
  // print("Print List every: $everyFruits");

  // 遍歷Set
  // var fruitsSetTest = new Set<String>();
  // fruitsSetTest.add("apple");
  // fruitsSetTest.add("banana");
  // print("========== set ==========");
  // print("Print List set: $fruitsSetTest");

  // print("========== set forEach ==========");
  // fruitsSetTest.forEach((e) => print("Print List set forEach: $e"));
  // print("========== set map ==========");
  // var mapFruits = fruitsSetTest.map((e) => e);
  // print("Print List set map: $mapFruits");
  // print("Print List set map List: ${mapFruits.toList()}");


  // 遍歷Map
  // var user = {
  //   "name": "John",
  //   "age": 25,
  // };
  // print("========== map ==========");
  // print("Print List map: $user");
  // print("========== map forEach ==========");
  // user.forEach((key, value) => print("Print List map forEach: $key: $value"));


}