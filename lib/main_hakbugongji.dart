import 'package:flutter/material.dart';

class MainHakBuGongJi extends StatefulWidget {
  @override
  _MainHakBuGongJiState createState() => _MainHakBuGongJiState();
}

class _MainHakBuGongJiState extends State<MainHakBuGongJi> {
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
            '학부 공지',
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w700),
          ),
          backgroundColor: Color(0xff96CEDB),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu,
                semanticLabel: 'menu',
              ),
              onPressed: () {
                print("this is menu button");
              },
            ),
          ],
        ),
        body: Center(
          child: Text('Hello this is 학부 공지 page'),
        ));
  }
}
