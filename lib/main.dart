// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());




class MyApp extends StatelessWidget {
  bool isX = true;
  int turns;
  List<String> gameState = [
    "empty", // button 1
    "empty", // button 2
    "empty", // button 3
    "empty", // button 4
    "empty", // button 5
    "empty", // button 6
    "empty", // button 7
    "empty", // button 8
    "empty", // button 9
  ];

  int onPressed(int id){
    checkWinner();
    return id;
  }

  void checkWinner(){
    if (gameState[0] == gameState[1] && gameState[0] == gameState[2]){
      print("Hello");
    }
    else if(gameState[3] == gameState[4] && gameState[3] == gameState[5]){

    }
    else if(gameState[6] == gameState[7] && gameState[6] == gameState[8]){

    }

    else if(gameState[0] == gameState[3] && gameState[0] == gameState[6]){

    }
    else if(gameState[1] == gameState[4] && gameState[1] == gameState[7]){

    }
    else if(gameState[2] == gameState[5] && gameState[2] == gameState[8]){

    }

    else if(gameState[0] == gameState[4] && gameState[0] == gameState[8]){

    }
    else if(gameState[2] == gameState[4] && gameState[2] == gameState[6]){

    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tic Tac Toe'),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Expanded(
                  flex: 1,
                  child: RaisedButton(onPressed: () {onPressed(0);},),
                ),

                Expanded(
                  flex: 1,
                  child: RaisedButton(onPressed: () {onPressed(0);},),
                ),

                Expanded(
                  flex: 1,
                  child: RaisedButton(onPressed: () {onPressed(0);},),
                ),

              ],
            ),
          ],
        ),
      ), 
    ),
  );
}

}
