import 'package:flutter/material.dart'; // 라이브러리 Import

// => : fat arrow - 호출을 의미
  // runApp은 widget을 argument로 가져야함
void main() => runApp(MyApp()); // custom widget을 argument로 넣어주기

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(
        primarySwatch: Colors.amber // 기본 색상 견본
      ), // closing label: 위젯의 끝을 알려줌
      home: MyHomePage(), // home 위젯이 앱이 실행되면 제일 먼저 보여지는 경로이기 때문에 무조건 필요
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // 발판 만들기 - 빈 도화지
      appBar: AppBar(
        title: Text('First app'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Hello'),
            Text('Hello'),
            Text('Hello')
          ],
        ),
      ),
    );
  }
}