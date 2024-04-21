import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      appBar: AppBar(
        title: Text('Snack Bar'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // RaisedButton ==> ElevatedButton
      child: ElevatedButton(
        child: Text('Show me'),
        onPressed: (){
          // Scaffold ==> ScaffoldMessenger
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            // text 구간 시작
            content: Text('Hellow',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            // text 구간 끝
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1000),
          )
          );
        },
        ),
    );
  }
}