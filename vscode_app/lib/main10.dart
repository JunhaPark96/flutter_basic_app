import 'package:flutter/material.dart';
import 'package:vscode_app/ScreenA.dart';
import 'package:vscode_app/ScreenB.dart';
import 'package:vscode_app/ScreenC.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  // initialRoute: 멀티페이지 이동을 할 때 화면에 제일 처음 출력될 route를 불러오는 역할 == home route
  // routes: String, WidgetBuilder Map 형태
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 기본 경로: '/'
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
      },
    );
  }
}


