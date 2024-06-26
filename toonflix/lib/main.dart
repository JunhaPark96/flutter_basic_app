import 'package:flutter/material.dart';
import 'package:toonflix/screens/main_screen.dart';
import 'package:toonflix/services/api_service.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key}); // super class 인 stateltessWidget에 key를 보내는 역할

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
