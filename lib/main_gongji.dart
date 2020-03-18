import 'package:flutter/material.dart';

class MainGongJi extends StatefulWidget {
  @override
  _MainGongJiState createState() => _MainGongJiState();
}

class _MainGongJiState extends State<MainGongJi> {
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
            '공지 사항',
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
                Icons.menu,
                semanticLabel: 'menu',
              ),
              onPressed: () {
                print("this is menu button");
              },
            )
          ],
        ),
        body: Center(
          child: Text('Hello this is 공지사항 page'),
        ));
  }
}
