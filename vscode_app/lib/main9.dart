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
              builder: (_) => SecondPage() // 기본 이동 애니메이션 효과 탑재
              // '_': 필요 없는 매개변수를 사용할 때 언더스코어 권장
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
            // Navigator.pop(ctx);
            // Second Page는 자체 context가 있고, pop메소드는 Second Page의 컨텍스트를 받기 때문에 위의 builder에 context를 필수로 쓰지 않아도 됨
            // 플러터에 뒤로가기가 기본으로 제공 되기 때문에 pop 메소드가 없어도 이동 가능함
          },
        ),
      ),
    );
  }
}
