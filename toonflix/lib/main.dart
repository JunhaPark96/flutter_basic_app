import 'package:flutter/material.dart';

void main() {
  runApp(App()); // 모든 앱의 root -> material || cupertinoApp을 return 해야 함
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // flutter Rule: 모든 화면은 scaffold가 필요 함.
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column (
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Text('Hey, Salena',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
          
                    ),
                    ),
                    Text('Welcome back',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.799),
                        fontSize: 18,
                    ),
                    ),
                  ],)
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}