import 'package:flutter/material.dart';

class MainLectureGongJi extends StatefulWidget {
  @override
  _MainLectureGongJiState createState() => _MainLectureGongJiState();
}

class _MainLectureGongJiState extends State<MainLectureGongJi> {
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
            '나의 수업공지',
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
          child: Text('Hello this is 나의 수업공지 page'),
        ));
  }
}
