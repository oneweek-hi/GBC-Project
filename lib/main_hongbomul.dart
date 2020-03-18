import 'package:flutter/material.dart';

class MainHongBoMul extends StatefulWidget {
  @override
  _MainHongBoMulState createState() => _MainHongBoMulState();
}

class _MainHongBoMulState extends State<MainHongBoMul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
              semanticLabel: 'keyboard_backspace',
            ),
            onPressed: () {
              print('keyboard_backspace');
              Navigator.pop(context);
            },
          ),
          title: Text(
            '홍보물',
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w700),
          ),
          backgroundColor: Color(0xff96CEDB),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                semanticLabel: 'search',
              ),
              onPressed: () {
                print("this is search button");
              },
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                semanticLabel: 'notification',
              ),
              onPressed: () {
                print("this is notification button");
                //TODO : 눌렀을 때 음소거모드로 바뀌고 한번 더 누르면 원래 모드로 바뀌는거 구현
              },
            ),
          ],
        ),
        body: Center(
          child: Text('Hello this is 홍보물 page'),
        ));
  }
}
