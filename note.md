function name 前面加 void 代表沒有return值

// 變數宣告方式
// 宣告方式 變數名稱 = 值
1. var varName = ""
2. 型別 varName = ""
3. const varName = ""
4. final varName = ""

1, 2可重新賦值, 3, 4不可重新賦值

const 寫程式的時候就必須賦值
final 可以在執行程式的當下在賦值

Ex: 
const date = "2025/3/12"
final date = new DateTime.now()

new DateTime.now() 是一個取得當下日期的function,所以當程式碼執行到final date = new DateTime.now()這行時，date才會被賦值當下的日期