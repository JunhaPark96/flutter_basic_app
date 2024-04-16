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
        title: Text('BBANTO'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      // 가로축 가운데 정렬은 Center로 정렬
      // 세로축 가운데 정렬은 mainAxixAlignment로 정렬
      body: Center(
        child: Column( // column위젯은 가로축은 제한되지만, 세로축 길이는 제한이 없음
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ],
          ),
      ),
    );
  }
}