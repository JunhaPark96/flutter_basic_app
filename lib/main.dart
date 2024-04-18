import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        // 간단한 위젯이나 아이콘을 appbar 타이틀 왼쪽에 위치시키는 역할
        leading: IconButton(
          icon: Icon(Icons.menu), 
          onPressed: () { 
            print('menu button is clicked');
           },
        ),
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.shopping_cart), 
          onPressed: () { 
            print('Shopping cart button is clicked');
           },
        ),
        IconButton(
          icon: Icon(Icons.search), 
          onPressed: () { 
            print('Search button is clicked');
           },
        ),
        ],
      ),
    );
  }
}