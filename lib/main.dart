import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the Second Page'),
          onPressed: (){
            // 버튼이 눌러짐과 동시에 SecondPage가 widgettree 구조에 포함됨.
            // second page는 first page위에 쌓이게 되는 stack 구조
            // first page의 위치를 정확히 알아야 이동을 할 수 있기 때문에 argument로 받음
            Navigator.push(context, MaterialPageRoute(
                // builder: 필수 인자
                // builder: (BuildContext context) {
                //   return SecondPage();
                // }
                // equals
              builder: (context) => SecondPage() // 기본 이동 애니메이션 효과 탑재
            ));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the First Page'),
          onPressed: (){
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}
