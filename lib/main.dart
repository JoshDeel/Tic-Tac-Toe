// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(TicTacToe());

/// This Widget is the main application widget.
class TicTacToe extends StatelessWidget {
  static const String _title = "Tic Tac Toe";
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: _title,
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Text("Test1")
            ),
          ],
        ),
      ),
    );
  }
}