import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  _HomePage createState() => new _HomePage();
}


class _HomePage extends State<MyApp> {
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

  bool isX = true;
  int turns;

  void onPressed(int id, String name){
    setState(() {
      gameState[id] = "X";
    });
    checkWinner();
    print(name);
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
                
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(onPressed: () {onPressed(0, this.gameState[0]);}, child: Text(this.gameState[0]),),
                ),

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(onPressed: () {onPressed(1, this.gameState[1]);}, child: Text(this.gameState[1]),),
                ),

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(onPressed: () {onPressed(2, this.gameState[2]);}, child: Text(this.gameState[2]),),
                ),

              ],
            ),

            Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(onPressed: () {onPressed(3, this.gameState[3]);}, child: Text(this.gameState[3]),),
                ),

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(onPressed: () {onPressed(4, this.gameState[4]);}, child: Text(this.gameState[4]),),
                ),

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(onPressed: () {onPressed(5, this.gameState[5]);}, child: Text(this.gameState[5]),),
                ),

              ],
            ),

            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(onPressed: () {onPressed(6, this.gameState[6]);}, child: Text(this.gameState[6]),),
                ),

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(onPressed: () {onPressed(7, this.gameState[7]);}, child: Text(this.gameState[7]),),
                ),

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(onPressed: () {onPressed(8, this.gameState[8]);}, child: Text(this.gameState[8]),),
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
