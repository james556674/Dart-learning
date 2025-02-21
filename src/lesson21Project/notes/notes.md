`Container` 的常用樣式與佈局屬性：  

| **屬性**                | **功能**                                      | **範例**                                      |
|-------------------------|---------------------------------------------|-------------------------------------------|
| `width`                 | 設定寬度                                    | `width: 200`                              |
| `height`                | 設定高度                                    | `height: 100`                             |
| `color`                 | 設定背景顏色                                | `color: Colors.blue`                      |
| `padding`               | 內邊距 (元素與邊界間距)                     | `padding: EdgeInsets.all(10)`             |
| `margin`                | 外邊距 (與其他元件的距離)                   | `margin: EdgeInsets.symmetric(horizontal: 20)` |
| `alignment`             | 元素對齊方式                                | `alignment: Alignment.center`             |
| `decoration`            | 自訂外觀 (圓角、邊框、陰影)                  | `decoration: BoxDecoration(...)`          |
| `child`                 | 放置子元件                                  | `child: Text('Hello')`                    |
| `constraints`           | 設定最大、最小寬高                          | `constraints: BoxConstraints(minWidth: 50, maxWidth: 300)` |
| `transform`             | 旋轉、縮放、平移                            | `transform: Matrix4.rotationZ(0.1)`       |

### 🎨 **BoxDecoration 的子屬性 (配合 `decoration`)**

| **屬性**              | **功能**                               | **範例**                                           |
|----------------------|-------------------------------------|-------------------------------------------------|
| `color`             | 背景顏色                             | `color: Colors.green`                           |
| `borderRadius`      | 圓角半徑                             | `borderRadius: BorderRadius.circular(10)`      |
| `border`            | 邊框                                 | `border: Border.all(color: Colors.black, width: 2)` |
| `boxShadow`         | 陰影                                 | `boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)]` |
| `gradient`          | 漸變色                               | `gradient: LinearGradient(colors: [Colors.blue, Colors.purple])` |
