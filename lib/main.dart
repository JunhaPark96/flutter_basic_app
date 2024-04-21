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
        // leading: IconButton(
        //   icon: Icon(Icons.menu), 
        //   onPressed: () { 
        //     print('menu button is clicked');
        //    },
        // ),
        // actions: 복수의 아이콘 버튼 등을 오른쪽에 배치
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
      // widget 기본 클래스
      drawer: Drawer(
        // padding 이나 margin에 신경쓰지 않고 배치할 수 있도록 ListTile widget제공
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // required argument 필수
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/kopo.jpg'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('KOPO'),
              accountEmail: Text('kopo@office.kopo.ac.kr'),
              // 클릭 시 기능 수행 디테일
              onDetailsPressed: (){
                print('Kopo friends');              
                },
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )
                ),
            ),
          ],
        ), 
      ),
    );
  }
}