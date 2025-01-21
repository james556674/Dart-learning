| **特性**                     | **普通構造函數**                                     | **命名構造函數**                                      |
|------------------------------|----------------------------------------------------|-----------------------------------------------------|
| **定義方式**                | 與類名相同，例如 `ClassName()`                     | 使用 `ClassName.name()` 的格式                      |
| **數量限制**                | 每個類只能有一個普通構造函數                        | 每個類可以有多個命名構造函數                        |
| **用途**                    | 用於基本的對象初始化                                | 用於提供多種初始化方式，滿足複雜場景需求            |
| **靈活性**                  | 相對較低                                           | 高，可支持多種初始化邏輯                            |
| **共存性**                  | 只能有一個                                          | 可以與普通構造函數共存                              |

---

### **實務應用場景**
1. **普通構造函數**：
   - 當只有一種簡單的初始化需求時，例如傳入所有必要參數。

2. **命名構造函數**：
   - 當類需要根據不同的數據源進行初始化時，例如：
     - 從字串解析對象。
     - 從 JSON 初始化對象。
     - 提供默認值的初始化。

#### 從 JSON 初始化對象（實務場景）：
```dart
class User {
  String name;
  int age;

  // 普通構造函數
  User(this.name, this.age);

  // 命名構造函數：從 JSON 初始化
  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  void display() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  // 使用普通構造函數
  var user1 = User('Alice', 30);
  user1.display(); // 輸出 "Name: Alice, Age: 30"

  // 使用命名構造函數
  var json = {'name': 'Bob', 'age': 25};
  var user2 = User.fromJson(json);
  user2.display(); // 輸出 "Name: Bob, Age: 25"
}
```