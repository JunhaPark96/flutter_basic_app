import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Player {
  String? name; // ?: 파라미터를 가질 수도 안 가질 수도 있음.

  Player({required this.name}); // named parameter
}

void main() {
  var junha = Player(name: "junha");
  runApp(App()); // 모든 앱의 root -> material || cupertinoApp을 return 해야 함
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // flutter Rule: 모든 화면은 scaffold가 필요 함.
      home: Scaffold(
        appBar: AppBar(
          elevation: 100,
          title: Text('Title'), // position parameter
        ),
        body: Center(
          child: Text('Hello world'),
        ),
      ),
    );
  }
}