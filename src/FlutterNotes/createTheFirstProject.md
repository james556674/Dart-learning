

### 建立專案的指令：
```sh
flutter create <專案名稱>
``` 

- 執行 `flutter create <專案名稱>` ，Flutter 會自動為你建立一個完整的 Flutter 專案結構，包括一些預設的檔案和資料夾。

📂 **你的專案資料夾**  
├── **lib/** 📂  👉 這是主要的程式碼目錄，`main.dart` 是應用的入口點  
├── **android/** 📂  👉 Android 端的原生設定檔案  
├── **ios/** 📂  👉 iOS 端的原生設定檔案  
├── **web/** 📂  👉 Web 版本的設定（如果你開啟 Web 支援）  
├── **test/** 📂  👉 測試用的程式碼  
├── **pubspec.yaml** 📄  👉 這裡管理專案的相依套件和資源  
├── **README.md** 📄  👉 你的專案說明文件  
└── **.gitignore** 📄  👉 這裡定義了 Git 需要忽略的檔案
└── **analysis_options.yaml** 📄  👉 lint 規則等等

### 運行專案的指令：  
```sh
flutter run
```

### 寫第一個main.dart

```dart
// 第一步：import package
import "package:flutter/material.dart";

// 第二步：定義主程式
void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Hello World")),
      body: const MyApp(),
    ),
  ),
);

// 第三步：定義元件
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const Center(
        child: Text(
          "Hello World",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
      );
  }
}
```
- `import 'package:flutter/material.dart';`  
  ➝ 匯入 Flutter 的 UI 套件 `Material`，用來建立 UI。
  
- `void main() { runApp(MyApp()); }`  
  ➝ Flutter 應用程式的入口點，`runApp(MyApp())` 會啟動應用。

- `class MyApp extends StatelessWidget`  
  ➝ `MyApp` 是應用的根部件，繼承 `StatelessWidget`，表示它是靜態的。

- `MaterialApp`  
  ➝ `MaterialApp` 是 Flutter 提供的 Material 設計風格應用框架。

- `Scaffold`  
  ➝ `Scaffold` 是 `MaterialApp` 提供的基本 UI 結構，包括 `appBar`（標題欄）和 `body`（主內容）。

---
