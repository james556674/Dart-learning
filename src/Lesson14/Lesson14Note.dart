// dart中的庫
// 1. 自定義
// 2. 系統內置庫
// 3. Pub包管理系統的庫

// async 非同步
// await 等待


// sampler 1 自定義庫
// import 'Animal.dart';

// void main() {
//   Animal animal = Animal("Dog", 10, "male");
//   animal.eat();
// }

// ------------------------------------------------------------

// sampler 2 系統內置庫
// import "dart:io";
// import "dart:math";
// import "dart:convert";

// void main() async {
//   // print("min(1, 2) = ${min(1, 2)}");
//   // print("max(3, 4) = ${max(3, 4)}");
//   var result = await getDataApi();
//   print("getDataApi() is done");
//   print(result);

// }

// getDataApi() async {
//   var httpClient = HttpClient();
//   var uri = "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg";
//   var request = await httpClient.getUrl(Uri.parse(uri));
//   var response = await request.close();
//   var responseBody = await response.transform(utf8.decoder).join();
//   print(responseBody);
//   return responseBody;
// }

// ------------------------------------------------------------

// async await 的範例
// void main() async {
//   await testAsync();
// }

// testAsync() async {
//   print("testAsync() is running");
//   await Future.delayed(Duration(seconds: 2));
//   print("testAsync() is done");
// }

// ------------------------------------------------------------

// sampler 3 Pub包管理系統的庫

// import 'dart:convert' as convert;

// import 'package:http/http.dart' as http;

// void main(List<String> arguments) async {
//   // This example uses the Google Books API to search for books about http.
//   // https://developers.google.com/books/docs/overview
//   var url =
//       Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

//   // Await the http get response, then decode the json-formatted response.
//   var response = await http.get(url);
//   if (response.statusCode == 200) {
//     var jsonResponse =
//         convert.jsonDecode(response.body) as Map<String, dynamic>;
//     var itemCount = jsonResponse['totalItems'];
//     print('Number of books about http: $itemCount.');
//   } else {
//     print('Request failed with status: ${response.statusCode}.');
//   }
// }

// import 'package:date_time_format/date_time_format.dart';

// void main() {
//   final dateTime = DateTime.now();

// // 2019-10-15T19:42:05-08:00
// print(dateTime.format());
// print(DateTimeFormat.format(dateTime));

// // October 15, 2019 7:42 pm
// print(dateTime.format(DateTimeFormats.american));
// print(DateTimeFormat.format(dateTime, format: DateTimeFormats.american));

// // 15/Oct/2019:19:42:05 -0700
// print(dateTime.format(DateTimeFormats.commonLogFormat));
// print(DateTimeFormat.format(dateTime, format: DateTimeFormats.commonLogFormat));

// // Tuesday, October 15, 2019
// print(dateTime.format(AmericanDateFormats.dayOfWeek));
// print(DateTimeFormat.format(dateTime, format: AmericanDateFormats.dayOfWeek));

// // Tue, Oct 15, 19:42
// print(dateTime.format('D, M j, H:i'));
// print(DateTimeFormat.format(dateTime, format: 'D, M j, H:i'));
// }

// 命名的衝突
// 1. 使用as關鍵字
// 2. 使用大括號{}  
// sample 重新命名
// import "Animal.dart" as renameAnimal;

// void main() {
//   var animal = renameAnimal.Animal("Dog", 10, "male");
//   animal.eat();
// }

// 部分導入
// import "myMath.dart" show getAge;

// void main() {
//   print(getAge(10));
// }

// 延遲加載

// 也稱為懶加載，可以在需要時才加載
// import "myMath.dart" deferred as myMath;

// greet() async {
//   await myMath.loadLibrary();
//   print(myMath.getAge(10));
// }






