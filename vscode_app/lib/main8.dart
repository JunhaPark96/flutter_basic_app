import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.min,
            // verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Container(
                width: 100,
                // height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                // height: 30.0,
                width: 30.0,
              ),
              Container(
                width: 100,
                // height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
                // height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
              Container(
                width: 100,
                // height: 20,
                color: Colors.amber,
              )
            ],
          ),
        ),
    );
  }
}