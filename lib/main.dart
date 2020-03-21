import 'package:flutter/material.dart';
import 'package:tictactoe/winnerPage.dart' as winnerPage;

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

  void resetGame(){
    gameState = [
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
  }

  bool isX = true;
  bool winner = false;
  int turns = 0;
  String player = "X";
  
  bool isBtnDisabled(int id){
    if (gameState[id] == "empty"){
      return false;
    }
    else{
      return true;
    }
  }

  // maybe look into returning a new button / using checkIsdiabled ? null : do something else
  void updateState(int id, String player){
    setState(() {
      if (gameState[id] == "empty"){
        gameState[id] = player;
      }
      else{
        print("ERROR ALREADY BEEN CLICKED");
      }
    });
  }

  void openWinnerPage(BuildContext context){
    Navigator.of(context).pushNamed('/winnerPage');
  }

 // on press, we want increment turns, update the state, check winner / num turns
  void onPressed(int id, String name){
    updateState(id, player);
    /**
    setState(() {
      gameState[id] = player;
    });
     */
    checkWinner();
    if (isX){
      player = "Y";
      isX = !isX;
    }
    else{
      player = "X";
      isX = !isX;
    }
    print(gameState[id]);
  }

void resetBtnPressed(){
  setState(() {
    gameState = [
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
    isX = true;
    winner = false;
    turns = 0;
    player = "X";
  });
}

  void checkWinner(){
    if (gameState[0] == gameState[1] && gameState[0] == gameState[2]){
      winner = true;
    }
    else if(gameState[3] == gameState[4] && gameState[3] == gameState[5]){
      winner = true;
    }
    else if(gameState[6] == gameState[7] && gameState[6] == gameState[8]){
      winner = true;
    }

    else if(gameState[0] == gameState[3] && gameState[0] == gameState[6]){
      winner = true;
    }
    else if(gameState[1] == gameState[4] && gameState[1] == gameState[7]){
      winner = true;
    }
    else if(gameState[2] == gameState[5] && gameState[2] == gameState[8]){
      winner = true;
    }

    else if(gameState[0] == gameState[4] && gameState[0] == gameState[8]){
      winner = true;
    }
    else if(gameState[2] == gameState[4] && gameState[2] == gameState[6]){
      winner = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      routes: <String, WidgetBuilder>{
        '/winnerPage': (BuildContext context) => winnerPage.WinnerPage(),
      },
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
                  child: RaisedButton(
                    onPressed: isBtnDisabled(0) ? null : () {onPressed(0, this.gameState[0]);},
                     child: Text(this.gameState[0]),),
                ),

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: isBtnDisabled(1) ? null : () {onPressed(1, this.gameState[1]);}, 
                    child: Text(this.gameState[1]),),
                ),

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: isBtnDisabled(2) ? null : () {onPressed(2, this.gameState[2]);},
                    child: Text(this.gameState[2]),),
                ),

              ],
            ),

            Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: isBtnDisabled(3) ? null : () {onPressed(3, this.gameState[3]);}, 
                    child: Text(this.gameState[3]),),
                ),

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: isBtnDisabled(4) ? null : () {onPressed(4, this.gameState[4]);}, 
                    child: Text(this.gameState[4]),),
                ),

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: isBtnDisabled(5) ? null : () {onPressed(5, this.gameState[5]);}, 
                    child: Text(this.gameState[5]),),
                ),

              ],
            ),

            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: isBtnDisabled(6) ? null : () {onPressed(6, this.gameState[6]);}, 
                    child: Text(this.gameState[6]),),
                ),

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: isBtnDisabled(7) ? null :  () {onPressed(7, this.gameState[7]);}, 
                    child: Text(this.gameState[7]),),
                ),

                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: isBtnDisabled(8) ? null :  () {onPressed(8, this.gameState[8]);}, 
                    child: Text(this.gameState[8]),),
                ),
              ],
            ),
            RaisedButton(onPressed: () {resetBtnPressed();}, child: Text("Press to reset the game"),),
            RaisedButton(onPressed: () {openWinnerPage(context);}, child: Text("Go To Winner Page"),),
          ],
        ),
        
      ), 
    ),
  );
}
}
