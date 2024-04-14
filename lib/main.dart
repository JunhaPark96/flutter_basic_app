import 'package:flutter/material.dart';

// => : fat arrow - 호출을 의미
  // runApp은 widget을 argument로 가져야함
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(
        primarySwatch: Colors.blue // 기본 색상 견본
      ), // closing label: 위젯의 끝을 알려줌
    home: MyHomePage(),
    );
  }
}
