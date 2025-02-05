
### **什麼是抽象類？**
- 抽象類是一種不能直接被實例化的類。
- 它可以包含抽象方法（沒有方法體的方法）以及具體的方法。
- 抽象類的主要目的是被子類繼承，並要求子類實現某些特定的功能。

---

### **定義抽象類**
使用 `abstract` 關鍵字來定義。例如：  

```dart
abstract class Animal {
  void eat(); // 抽象方法 (不需要方法體)
  void sleep() {
    print("Sleeping..."); // 具體方法 (有方法體)
  }
}
```

---

### **使用抽象類**
抽象類不能直接創建對象，但是可以透過繼承來實現它的功能。例如：  

```dart
class Dog extends Animal {
  @override
  void eat() {
    print("The dog is eating.");
  }
}

void main() {
  var dog = Dog();
  dog.eat(); // The dog is eating.
  dog.sleep(); // Sleeping...
}
```

在這個例子中，`Dog` 繼承了 `Animal`，並且必須實現 `eat()` 方法，因為它是抽象的。

---

### **抽象類的好處**
1. **設計框架**：抽象類可以定義一組規則或標準，所有子類都必須遵守。
2. **代碼復用**：可以在抽象類中實現通用的功能，子類自動繼承。
3. **強制實現**：通過抽象方法，強制子類實現某些特定行為。

---
