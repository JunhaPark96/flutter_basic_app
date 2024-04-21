import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
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
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('hello'),
              duration: Duration(seconds: 3),
              action: SnackBarAction(
                label: '닫기', onPressed: (){
                print('스낵바 닫기 버튼');
              }
              ),
              )
              );
            // of -> 주어진 context에서 위로 올라가면서 가장 가까운 Something(Scaffold)를 찾아서 반환.
          },

          child: Text('ElavtedButton'),
          
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            foregroundColor: MaterialStateProperty.all(Colors.amber),
            overlayColor: MaterialStateProperty.all(Colors.blueGrey),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.cyan),
              ),
            ),
            ),

          ),
        ),
      );
  }
}