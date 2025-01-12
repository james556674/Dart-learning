void main() {

  // List 基本操作
  var fruits = <String>["apple", "banana"];
  print("Print List: $fruits");
  print("Print List Length: ${fruits.length}");
  print("Print List is Empty: ${fruits.isEmpty}");
  print("Print List is Not Empty: ${fruits.isNotEmpty}");
  print("Print List Reversed: ${fruits.reversed}");

  // 新增單一元素到 List
  fruits.add("grape");
  print("Print List add: $fruits");

  // 新增多個元素到 List
  fruits.addAll(["orange", "pear"]);
  print("Print List addAll: $fruits");

  // 查找元素在 List 中的索引位置
  final indexOfBanana = fruits.indexOf("banana");
  print("Print List indexOf banana: $indexOfBanana");

  // 從 List 中移除指定元素
  fruits.remove("banana");
  print("Print List remove: $fruits");

  // 從 List 中移除指定索引位置的元素
  fruits.removeAt(0);
  print("Print List removeAt: $fruits");

  // startIndex, endIndex, value
  // 填充指定範圍的元素（起始索引, 結束索引, 填充值）
  fruits.fillRange(0, 2, "kiwi");
  print("Print List fillRange: $fruits");

  // 在指定索引位置插入元素
  fruits.insert(1, "kiwi");
  print("Print List insert: $fruits");

  // 在指定索引位置插入多個元素
  fruits.insertAll(0, ["kiwi", "orange"]);
  print("Print List insertAll: $fruits");

  // 將 List 中的元素用指定分隔符連接成字串
  final joinedFruits = fruits.join(", ");
  print("Print List joinedFruits: $joinedFruits");

  // 將字串依照指定分隔符分割成 List
  const stringFruits = "apple,banana,orange,pear";
  final splitFruits = stringFruits.split(",");
  print("Print List splitFruits: $splitFruits");


  // Set 集合操作（不允許重複元素）
  // Notes: can't have duplicate values

  var uniqueFruits = new Set<String>();
  uniqueFruits.add("apple");
  uniqueFruits.add("banana");
  uniqueFruits.add("banana");
  print("Print List uniqueFruits: $uniqueFruits");

  // Map
  // Notes: key-value pairs
  var user = {
    "name": "John",
    "age": 25,
  };
  print("Print Map user: $user");

  print("keys ${user.keys.toList()}");
  print("values ${user.values.toList()}");
  print("user is empty ${user.isEmpty}");
  print("user is not empty ${user.isNotEmpty}");

  // 新增多組key-value到 Map
  user.addAll({
    "email": "john@example.com",
    "phone": "1234567890",
  });
  user.remove("age");
  print("Print Map user: $user");

  print("contains email key ${user.containsKey("email")}");
  print("contains email value ${user.containsValue("john@example.com")}");


  // 遍歷List
  const fruitsForMapTest = ["apple", "banana", "orange"];

  // for loop
  print("========== for loop ==========");
  for (var i = 0; i < fruitsForMapTest.length; i++) {
    print("Print List forEach: ${fruitsForMapTest[i]}");
  }

  // forEach
  print("========== forEach ==========");
  fruitsForMapTest.forEach((element) {
    print("Print List forEach: $element");
  });
  // map
  print("========== map ==========");
  var mapFruits = fruitsForMapTest.map((e) => e);
  print("Print List map: $mapFruits");
  print("Print List map List: ${mapFruits.toList()}");

  // where
  print("========== where ==========");
  var whereFruits = mapFruits.where((e) => e.length == 5);
  print("Print List where: $whereFruits");
  print("Print List where List: ${whereFruits.toList()}");

  // any
  print("========== any ==========");
  var anyFruits = mapFruits.any((e) => e.length == 5);
  print("Print List any: $anyFruits");

  // every
  print("========== every ==========");
  var everyFruits = mapFruits.every((e) => e.length == 5);
  print("Print List every: $everyFruits");

  // 遍歷Set
  var fruitsSetTest = new Set<String>();
  fruitsSetTest.add("apple");
  fruitsSetTest.add("banana");
  print("========== set ==========");
  print("Print List set: $fruitsSetTest");

  print("========== set forEach ==========");
  fruitsSetTest.forEach((e) => print("Print List set forEach: $e"));
  print("========== set map ==========");
  var mapFruitsSet = fruitsSetTest.map((e) => e);
  print("Print List set map: $mapFruitsSet");
  print("Print List set map List: ${mapFruitsSet.toList()}");


  // 遍歷Map
  var userMapTest = {
    "name": "John",
    "age": 25,
  };
  print("========== map ==========");
  print("Print List map: $userMapTest");
  print("========== map forEach ==========");
  userMapTest.forEach((key, value) => print("Print List map forEach: $key: $value"));

}