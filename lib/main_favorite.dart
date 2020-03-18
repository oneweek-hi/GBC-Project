import 'package:flutter/material.dart';

class MainFavorite extends StatefulWidget {
  @override
  _MainFavoriteState createState() => _MainFavoriteState();
}

class _MainFavoriteState extends State<MainFavorite> {
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
            '나의 즐겨찾기',
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w700),
          ),
          backgroundColor: Color(0xff96CEDB),
          actions: <Widget>[


          ],
        ),
        body: Center(
          child: Text('Hello this is 나의 즐겨찾기 page'),
        ));
  }
}
