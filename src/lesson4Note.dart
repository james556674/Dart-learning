
// 比起考慮 a++ 或 ++a 不如分開寫
// void main() {
//   int a = 1;
//   a++;
//   var b = a;

//   print(a);
//   print(b);
// }

// for迴圈
// void main() {
//   for (int i = 1; i <= 5; i++) {
//     print(i);
//   }
// }
// 

// 打印一個list
// void main() {
//   const list = ["A", "B", "C"];

//   for (var i = 0; i < list.length; i++) {
//     print(list[i]);
//   }
// }

// void main() {
//   const list = [
//     {
//       "a": "123",
//     },
//     {
//       "a": "321",
//     }
//   ];

//     for (var i = 0; i < list.length; i++) {
//       print(list[i]["a"]);
//     }
// }

// while迴圈
// void main() {
//   var i = 0;
//   while(i <= 2) {
//     print(i);
//     i++;
//   }
// }

// do while (如果不想用for迴圈也不想用while迴圈，在學這個)
// void main() {
//   var j = 10;
//   do {
//     print(j);
//     j++;
//   } while (j < 12);
// }

// continue 跳過但繼續執行迴圈
// break中斷迴圈執行

// void main() {
//   const a = 1;
//   if (a == 1) {
//     return;
//   }
//   print(a);
// }

// void main() {
//   var a = 1;

//   final b = a + 2;

//   print(b);
// }