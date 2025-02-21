import "package:flutter/material.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: const Text("Hello World")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserImageCircle(),
              UserName(),
              ContainerText(),
              Button(),
            ],
          ),
        ),
      ),
    ),
  );
}

class UserImageCircle extends StatelessWidget {
  const UserImageCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
      child: const Text("Anna Chen", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}

class ContainerText extends StatelessWidget {
  const ContainerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
      child: const Text("為你推薦", style: TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Text("追蹤", style: TextStyle(color: Colors.white, fontSize: 16)),
    );
  }
}

// 下面是課堂
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text("Hello World")),
//         body: const Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             MyApp(),
//             Button(),
//           ],
//         ),
//       ),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 100,
//         height: 100,
//         alignment: Alignment.bottomCenter,
//         decoration: const BoxDecoration(
//           color: Colors.red,
//           // gradient: LinearGradient(
//           //   colors: [Colors.blue, Colors.purple],
//           // ),
//         ),
//         child: const Text("Hello this is a test", style: TextStyle(color: Colors.white, fontSize: 20)),
//       ),
//     );
//   }
// }

// class Button extends StatelessWidget {
//   const Button({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100,
//       height: 40,
//       margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
//       // padding: const EdgeInsets.all(4),
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         borderRadius: BorderRadius.circular(6),
//       ),
//       alignment: Alignment.center,
//       // transform: Matrix4.translationValues(20, 0, 0),
//       child: const Text("Click me", style: TextStyle(color: Colors.white, fontSize: 16)),
//     );
//   }
// }
