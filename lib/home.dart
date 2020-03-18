// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project_main_page/main_favorite.dart';
import 'package:project_main_page/main_gongji.dart';
import 'package:project_main_page/main_hakbugongji.dart';
import 'package:project_main_page/main_hongbomul.dart';
import 'package:project_main_page/main_lecturegongji.dart';
import 'package:project_main_page/main_studymojip.dart';

class HomePage extends StatelessWidget {
  // TODO: Make a collection of cards (102)
  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
            semanticLabel: 'keyboard_backspace',
          ),
          onPressed: () {
            print('keyboard_backspace');
          },
        ),
        title: Text('Main Menu'),
        backgroundColor: Color(0xff96CEDB),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.menu,
                semanticLabel: 'menu',
              ),
            onPressed: () {
                print("this is munu button");
            },
          )
        ],

      ),
      // TODO: Add app bar (102)
      // TODO: Add a grid view (102)
      body: Center(

        child: Container(
            height: 550,
            // TODO: Container의 사이즈를 정하고 나서 어떻게 위 아래 거리를 다르게 할 것인가, 어떻게 아래에 고스트를 넣을 것인가
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 9.5/8.0,
              children: <Widget>[
                Container(  // 1 공지사항
                    color: Color(0xff94DDED),

                    child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MainGongJi();
                          }));
                        },
                        splashColor: Colors.white,
                        child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(Icons.announcement, size: 70.0, color: Colors.white),
                                SizedBox(height: 5),
                                Text('공지사항', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w700))
                              ],
                            )
                        )
                    )
                ),
                Container(  // 2 학부공지
                    color: Color(0xff78A5AF),

                    child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MainHakBuGongJi();
                          }));
                        },
                        splashColor: Colors.white,
                        child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(Icons.message, size: 70.0, color: Colors.white),
                                SizedBox(height: 5),
                                Text('학부공지', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w700))
                              ],
                            )
                        )
                    )),
                Container(  // 3 나의 수업공지
                    color: Color(0xffFFC362),

                    child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MainLectureGongJi();
                          }));
                        },
                        splashColor: Colors.white,
                        child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(Icons.school, size: 70.0, color: Colors.white),
                                SizedBox(height: 5),
                                Text('나의 수업공지', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w700))
                              ],
                            )
                        )
                    )),
                Container(  // 4 스터디 모집
                    color: Color(0xff9DC8D2),

                    child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MainStudyMoJip();
                          }));
                        },
                        splashColor: Colors.white,
                        child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(Icons.people, size: 70.0, color: Colors.white),
                                SizedBox(height: 5),
                                Text('스터디 모집', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w700))
                              ],
                            )
                        )
                    )),
                Container(  // 5 홍보물
                    color: Color(0xff9DC8D2),

                    child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MainHongBoMul();
                          }));
                        },
                        splashColor: Colors.white,
                        child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(Icons.library_books, size: 70.0, color: Colors.white),
                                SizedBox(height: 5),
                                Text('홍보물', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w700))
                              ],
                            )
                        )
                    )),
                Container(  // 6 나의 즐겨찾기
                    color: Color(0xffF77B55),

                    child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MainFavorite();
                          }));
                        },
                        splashColor: Colors.white,
                        child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(Icons.star, size: 70.0, color: Colors.white),
                                SizedBox(height: 5),
                                Text('나의 즐겨찾기', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w700))
                              ],
                            )
                        )
                    ))

                /* Card(
              //margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.grey,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.home, size: 70.0),
                      Text('Home', style: TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              )
            ),  */


              ],

            )
        ),
      ),
      // TODO: Set resizeToAvoidBottomInset (101)
      resizeToAvoidBottomInset: false,
    );
  }
}
