// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(TicTacToe());

/// This Widget is the main application widget.
class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Text("Tic Tac Toe"),
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
        child: RaisedButton(
          onPressed: (){},
          child: Text("Tic Tac Toe Game"),
          ),
      ),
    );
  }
}