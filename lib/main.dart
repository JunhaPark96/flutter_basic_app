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
      body: Center(
        child: ElevatedButton(
          child: Text('Toast'),
          onPressed: (){
            fluttertoast();
          },
        ),
      ),
    );
  }
}

void fluttertoast() {
  Fluttertoast.showToast(msg: 'Flutter',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 25,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
  );
}
