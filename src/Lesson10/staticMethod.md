| **特性**                  | **靜態成員 (Static)**                                   | **非靜態成員 (Instance)**                         |
|---------------------------|-------------------------------------------------------|-------------------------------------------------|
| **屬於誰**               | 屬於類本身，與實例無關                                  | 屬於具體的實例，與特定對象相關                   |
| **訪問方式**             | 通過類名直接訪問，例如 `ClassName.member`               | 通過對象訪問，例如 `object.member`               |
| **內存分配**             | 只分配一次，整個應用程序共享一份                        | 每創建一個實例，分配一份內存                     |
| **用途**                 | 用於共享數據或不依賴實例的功能，例如常量、工具方法       | 與特定對象相關的數據或功能                       |
| **典型例子**             | 全局計數器、數學函數（如 `Math.sqrt`）、配置項等         | 用於表示單個物件的屬性或行為                     |
| **是否需要實例化類**     | 不需要（可直接使用）                                    | 需要創建類的實例來使用                           |
| **修飾符**               | 使用 `static` 關鍵字                                   | 不需要任何特殊修飾符                             |
| **局限性**               | - 不能訪問非靜態成員                                   | - 不適合全局共享的數據或功能                     |
| **優點**                 | - 節省內存<br>- 不依賴對象<br>- 提供全局訪問            | - 與特定對象相關的行為更靈活                     |

---

### 簡單的範例來區分
#### 靜態成員的例子：
```dart
class Utility {
  static int counter = 0;

  static void printCounter() {
    print('Counter: $counter');
  }
}

void main() {
  Utility.counter++;         // 修改靜態變量
  Utility.printCounter();    // 輸出 "Counter: 1"
}
```

#### 非靜態成員的例子：
```dart
class Person {
  String name;

  Person(this.name);

  void sayHello() {
    print('Hello, my name is $name.');
  }
}

void main() {
  var person = Person('Alice');
  person.sayHello();         // 輸出 "Hello, my name is Alice."
}
```

### 快速判斷：
- **如果數據或功能應該由所有實例共享**：用靜態。
- **如果每個實例需要自己的數據或行為**：用非靜態。