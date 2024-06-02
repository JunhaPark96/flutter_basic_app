import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App()); // 모든 앱의 root -> material || cupertinoApp을 return 해야 함
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // flutter Rule: 모든 화면은 scaffold가 필요 함.
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: Center(
          child: Text('Hello world'),
        )
      ),
    );
  }
}