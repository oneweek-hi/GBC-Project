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

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/upupu.jpg"),
              fit: BoxFit.cover,
            ),
             ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          children: <Widget>[
            SizedBox(height: 170.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            // TODO: Add TextField widgets (101)
            // [Name]
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff867E7E).withOpacity(0.22),
                  prefixIcon: Icon(Icons.person_outline),
                  labelText: 'Hisnet ID를 입력하세요',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            // spacer
            SizedBox(
              height: 20.0,
            ),

            // [Password]
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff867E7E).withOpacity(0.22),
                  prefixIcon: Icon(Icons.lock_outline),
                  labelText: '비밀번호를 입력하세요',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              obscureText: true,
            ),
            // TODO: Add button bar (101)
            SizedBox(
              height: 35.0,
            ),
            Container(
              height: 55,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                textColor: Colors.white,
                color: const Color(0xff78A5AF),
                child: Text('로그인',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)
