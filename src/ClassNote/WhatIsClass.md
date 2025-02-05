### **什麼是 Class？（類別）**
在程式設計中， **Class(類別)** 是一種「藍圖」或「模板」，用來描述一類物件的屬性（特徵）和行為（功能）。  
想像成設計圖，根據這個設計圖，我們可以創造許多具體的物件（物件是 Class 的實例）。

---

### **為什麼需要 Class？**
1. **簡化程式碼重複**：你不需要為每個相似的物件重複撰寫代碼。
2. **結構化數據與行為**：能將屬性和功能封裝到一起，使代碼更有條理。
3. **可擴展性**：你可以透過繼承和多態來構建更複雜的系統。

---

### **Class 的基本特性**
#### 1. **屬性（Attributes / Fields）**
   - 描述物件的特徵或數據。
   - 例如：一個人的名字、年齡。

#### 2. **方法（Methods）**
   - 描述物件可以執行的行為。
   - 例如：走路、說話。

#### 3. **構造函數（Constructor）**
   - 一種特殊的方法，用於創建和初始化物件。
   - 當你使用 Class 創建物件時，構造函數會自動執行。

---

### **Dart 中如何定義 Class**

```dart
class Animal {
  // 屬性
  String? name;
  int? age;

  // 構造函數
  Animal(this.name, this.age);

  // 方法
  void speak() {
    print('$name is speaking!');
  }
}
```

---

### **如何使用 Class**
#### 創建物件
我們可以使用 **構造函數** 來創建 Class 的實例（物件）：
```dart
void main() {
  var dog = Animal('Buddy', 3); // 使用構造函數創建物件
  print(dog.name); // 輸出: Buddy
  print(dog.age);  // 輸出: 3

  dog.speak(); // 輸出: Buddy is speaking!
}
```

---

### **構造函數詳細解釋**
構造函數（Constructor）是用來初始化物件的特定方法：
1. **默認構造函數**：如果你不定義構造函數，Dart 會提供一個默認的空構造函數。
   ```dart
   class Person {
     String name = 'Unknown';
   }

   void main() {
     var p = Person(); // 使用默認構造函數
     print(p.name); // 輸出: Unknown
   }
   ```

2. **參數化構造函數**：可以傳遞參數來初始化物件。
   ```dart
   class Car {
     String brand;
     int year;

     // 構造函數
     Car(this.brand, this.year);
   }

   void main() {
     var myCar = Car('Toyota', 2020);
     print('${myCar.brand}, ${myCar.year}'); // 輸出: Toyota, 2020
   }
   ```

3. **命名構造函數**：可以用多個名字創建不同用途的構造函數。
   ```dart
   class Point {
     int x, y;

     // 預設構造函數
     Point(this.x, this.y);

     // 命名構造函數
     Point.zero() : x = 0, y = 0;
   }

   void main() {
     var p1 = Point(3, 4);
     var p2 = Point.zero();
     print('p1: (${p1.x}, ${p1.y}), p2: (${p2.x}, ${p2.y})');
     // 輸出: p1: (3, 4), p2: (0, 0)
   }
   ```


### **總結**
- Class 是物件的「藍圖」或「模板」。
- **屬性** 和 **方法** 是 Class 的核心部分。
- **構造函數（Constructor）** 是用來創建和初始化物件的關鍵工具。

---

### **私有方法**
私有方法（Private Method）是一種程式設計概念，指的是只能在類別內部存取或使用的方法，外部無法直接調用或存取。它的主要目的是封裝實現細節，保護類別內部的邏輯不被外界直接影響
1. **封裝細節**：避免外部對方法的直接使用，防止影響內部邏輯或造成不必要的耦合。
2. **安全性**：保護不應被外部訪問的邏輯，防止資料被意外或惡意修改。
3. **維護性**：內部邏輯可以自由修改，不需要擔心改動會影響外部程式碼。
4. **清晰性**：只向外暴露必要的功能，讓類別的 API 更簡潔。
```dart
class Example {
  void publicMethod() {
    print("This is a public method.");
    _privateMethod();
  }

  void _privateMethod() {
    print("This is a private method.");
  }
}

void main() {
  var example = Example();
  example.publicMethod(); // 可以調用
  // example._privateMethod(); // 無法直接調用，會報錯
}
```

---

### **Getter and Setter**

在 Dart 中，`getter` 和 `setter` 是用來對 class 的屬性進行訪問和控制的，主要是為了更清晰、更安全地操作物件的屬性。與普通的方法相比，使用 `getter` 和 `setter` 有一些特定的應用場景和優勢。

### **應用場景**
1. **控制屬性訪問**  
   `getter` 和 `setter` 提供了一個介面來控制對屬性讀取和修改的行為。例如，你可以在屬性設置時進行驗證，或在屬性讀取時進行計算。
   ```dart
   class Rectangle {
     double _width = 0;
     double _height = 0;

     // Getter
     double get area => _width * _height;

     // Setter with validation
     set width(double value) {
       if (value > 0) {
         _width = value;
       } else {
         throw ArgumentError('Width must be greater than 0');
       }
     }

     set height(double value) {
       if (value > 0) {
         _height = value;
       } else {
         throw ArgumentError('Height must be greater than 0');
       }
     }
   }
   ```

   **為什麼不用方法？**  
   如果用方法，會變成像這樣：
   ```dart
   rectangle.setWidth(10);
   rectangle.setHeight(20);
   var area = rectangle.getArea();
   ```
   使用 `getter` 和 `setter` 時：
   ```dart
   rectangle.width = 10;
   rectangle.height = 20;
   var area = rectangle.area;
   ```
   這樣更簡潔且符合物件導向的直覺。

2. **資料封裝與抽象**  
   你可以隱藏內部的變量（通常用 `_` 作為私有變量），而只暴露 `getter` 和 `setter`，從而確保內部邏輯不被外部影響。

3. **方便屬性的計算**  
   使用 `getter` 可以實現某些動態計算的屬性，而不需要存儲額外的狀態。
   ```dart
   class Circle {
     double radius;

     Circle(this.radius);

     // 動態計算屬性
     double get circumference => 2 * 3.14 * radius;
   }
   ```

4. **符合 Dart 的語法風格**  
   Dart 支持更語意化的屬性訪問方式，`getter` 和 `setter` 是 Dart 語言的特性，符合其簡潔的設計理念，避免了不必要的冗長方法名。

---

### **為什麼不直接用方法？**
1. **可讀性和易用性**  
   用戶對屬性的操作通常是通過賦值或訪問（如 `object.property`）來完成的。使用 `getter` 和 `setter` 看起來更自然。

2. **API 的穩定性**  
   當你的類需要做出修改時，例如將某個屬性從簡單變量轉換為計算屬性，你可以無縫地從普通變量轉變為 `getter` 和 `setter`，而不需要改變 API 的使用方式。

3. **遵循設計模式**  
   在物件導向編程中，`getter` 和 `setter` 是屬性操作的標準做法，更能表達屬性訪問的意圖，而不只是單純的方法調用。

---

### **總結**
雖然方法和 `getter`/`setter` 都能實現對屬性的操作，但 `getter` 和 `setter` 在設計上更簡潔直觀，適合屬性操作場景，尤其是在需要進行資料封裝、屬性驗證或計算時。

---

### **什麼是多型？**
多型的意思是「一個對象可以有多種形態」。在 Dart 中，這通常是指：
1. 子類對父類方法的重寫（覆寫）。
2. 使用父類的引用來操作子類的對象。

多型的核心在於 **「通過父類引用調用子類實現」**，這樣我們就可以在不知道具體對象類型的情況下執行它的行為。

---

### **多型的基本示例**
以下是簡單的多型示例：

```dart
abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof! Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow! Meow!");
  }
}

void main() {
  // 使用多型：父類引用操作子類對象
  Animal animal;

  animal = Dog();
  animal.makeSound(); // 輸出：Woof! Woof!

  animal = Cat();
  animal.makeSound(); // 輸出：Meow! Meow!
}
```

---

### **關鍵點**
1. **父類作為接口**：在多型中，我們通常會定義一個父類（或者接口），讓子類繼承或實現它。
2. **重寫方法**：子類可以根據自己的需求來覆寫父類中的方法。
3. **靈活性**：可以統一處理多種不同類型的對象，而無需知道具體的類型。

---

### **應用場景**
多型非常適合處理以下場景：
1. **統一接口處理不同對象**：比如在遊戲中，不同角色都可以繼承一個 `Character` 類，並實現自己的行為。
2. **動態行為**：根據對象的實際類型調用相應的行為。
3. **簡化代碼邏輯**：減少 `if-else` 或 `switch-case` 判斷對象類型的需求。

---

### **進一步的示例：處理多種交通工具**
```dart
abstract class Vehicle {
  void move();
}

class Car extends Vehicle {
  @override
  void move() {
    print("Driving a car.");
  }
}

class Bike extends Vehicle {
  @override
  void move() {
    print("Riding a bike.");
  }
}

void main() {
  // 多型示例
  List<Vehicle> vehicles = [Car(), Bike()];

  for (var vehicle in vehicles) {
    vehicle.move(); // 根據具體的對象類型調用對應的 move() 方法
  }
}
```

**輸出：**
```
Driving a car.
Riding a bike.
```

---

### **總結**
1. 多型讓我們可以通過父類的引用，來操作不同的子類對象。
2. 它增強了代碼的靈活性和可擴展性。
3. Dart 中的多型通常和抽象類或接口結合使用。

---

### **什麼是接口？**
在 Dart 中，**接口**是一種約定，用來定義一組行為或方法，並讓類去實現它們。雖然 Dart 沒有專門的 `interface` 關鍵字，但任何類都可以被當作接口，並可以通過 `implements` 關鍵字來實現。

---

### **接口的特點**
1. **用於約束行為**：接口定義了一組方法，要求實現它們的類必須提供具體的實現。
2. **多重實現**：一個類可以同時實現多個接口。
3. **完全自定義**：當一個類實現接口時，必須覆寫接口中所有的方法和屬性。

---

### **接口的基本示例**
```dart
// 定義接口
class Animal {
  void eat(); // 抽象方法
  void sleep(); // 抽象方法
}

// 實現接口
class Dog implements Animal {
  @override
  void eat() {
    print("Dog is eating.");
  }

  @override
  void sleep() {
    print("Dog is sleeping.");
  }
}

void main() {
  var dog = Dog();
  dog.eat();   // 輸出：Dog is eating.
  dog.sleep(); // 輸出：Dog is sleeping.
}
```

---

### **與抽象類的區別**
雖然抽象類也能定義方法約束，但接口和抽象類的使用場合有所不同：

| **比較項目**       | **抽象類**                                                                                 | **接口**                                                                            |
|--------------------|-------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
| **關鍵字**         | 使用 `abstract` 定義。                                                                    | 使用 `implements` 實現。                                                          |
| **是否有具體實現** | 可以包含具體的方法實現和屬性。                                                             | 接口中的方法需要完全由實現類覆寫，不能有具體實現（除非用 mixins）。               |
| **多重繼承支持**   | 不支持多重繼承（子類只能繼承一個抽象類）。                                                 | 支持多個接口的實現。                                                              |
| **使用場景**       | 當需要一些通用行為或屬性時，並希望子類自動繼承這些功能。                                    | 當需要強制某些類實現特定行為時使用，且不需要繼承具體實現。                       |

---

### **多個接口的實現**
Dart 支持同時實現多個接口，讓類可以擁有多種行為。

```dart
class Swimmer {
  void swim() {
    print("Swimming...");
  }
}

class Flyer {
  void fly() {
    print("Flying...");
  }
}

class Duck implements Swimmer, Flyer {
  @override
  void swim() {
    print("Duck is swimming.");
  }

  @override
  void fly() {
    print("Duck is flying.");
  }
}

void main() {
  var duck = Duck();
  duck.swim(); // 輸出：Duck is swimming.
  duck.fly();  // 輸出：Duck is flying.
}
```

---

### **接口的應用場景**
1. **統一規範**：當需要不同類型的對象擁有相同的行為時。
2. **多重功能組合**：比如一個類需要同時支持游泳和飛行，就可以實現兩個對應的接口。
3. **解耦合**：讓代碼更加靈活，實現類之間的低耦合。

---

