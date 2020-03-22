import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  _Page createState() => new _Page();
}

class _Page extends State<Page> {
  
  bool isX = true;
  bool winner = false;
  int turns = 0;
  String player = "X";
  Color unclickedColor = Colors.grey;
  Color clickedColor = Colors.blue;
  int xWins = 0;
  int oWins = 0;
  int catWins = 0;

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

  void resetGame() {
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
      xWins = 0;
      oWins = 0;
      catWins = 0;
    });
  }

  void clearboard() {
    setState(() {
      gameState = [
        "empty", // button 0
        "empty", // button 1
        "empty", // button 2
        "empty", // button 3
        "empty", // button 4
        "empty", // button 5
        "empty", // button 6
        "empty", // button 7
        "empty", // button 8
      ];
    });
    isX = true;
    player = "X";
    turns = 0;
    winner = false;
  }

  showWinner(String winner) {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text("Winner"),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('The winner is: ' + winner),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Back'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void onPressed(int id, String name) {
    updateState(id, player);

    checkWinner();
    if (winner) {
      if (isX && turns < 9) {
        xWins++;
        showWinner("X");
      } else if (turns < 9) {
        oWins++;
        showWinner("O");
      } else if (turns == 9) {
        catWins++;
        showWinner("Cat");
      }
      clearboard();
    } else if (isX) {
      player = "O";
      isX = !isX;
    } else {
      player = "X";
      isX = !isX;
    }
  }

  bool isBtnDisabled(int id) {
    if (gameState[id] == "empty") {
      return false;
    } else {
      return true;
    }
  }

  void updateState(int id, String player) {
    setState(() {
      if (gameState[id] == "empty") {
        gameState[id] = player;
      } else {
        print("ERROR ALREADY BEEN CLICKED");
      }
    });
    turns += 1;
  }

  void checkWinner() {
    if (gameState[0] == gameState[1] &&
        gameState[0] == gameState[2] &&
        gameState[0] != "empty") {
      winner = true;
    } else if (gameState[3] == gameState[4] &&
        gameState[3] == gameState[5] &&
        gameState[3] != "empty") {
      winner = true;
    } else if (gameState[6] == gameState[7] &&
        gameState[6] == gameState[8] &&
        gameState[6] != "empty") {
      winner = true;
    } else if (gameState[0] == gameState[3] &&
        gameState[0] == gameState[6] &&
        gameState[0] != "empty") {
      winner = true;
    } else if (gameState[1] == gameState[4] &&
        gameState[1] == gameState[7] &&
        gameState[1] != "empty") {
      winner = true;
    } else if (gameState[2] == gameState[5] &&
        gameState[2] == gameState[8] &&
        gameState[2] != "empty") {
      winner = true;
    } else if (gameState[0] == gameState[4] &&
        gameState[0] == gameState[8] &&
        gameState[0] != "empty") {
      winner = true;
    } else if (gameState[2] == gameState[4] &&
        gameState[2] == gameState[6] &&
        gameState[2] != "empty") {
      winner = true;
    } else if (turns == 9) {
      print("Cat got it");
      winner = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Tic Tac Toe'),
          ),
        ),
        body: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("X Wins: " + xWins.toString()),
                  Text("O Wins: " + oWins.toString()),
                  Text("Cat Wins: " + catWins.toString()),
                ],
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: RaisedButton(
                            onPressed: isBtnDisabled(0)
                                ? null
                                : () {
                                    onPressed(0, this.gameState[0]);
                                  },
                            child: Text(this.gameState[0]),
                            color: unclickedColor,
                            disabledColor: clickedColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: RaisedButton(
                            onPressed: isBtnDisabled(1)
                                ? null
                                : () {
                                    onPressed(1, this.gameState[1]);
                                  },
                            child: Text(this.gameState[1]),
                            color: unclickedColor,
                            disabledColor: clickedColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: RaisedButton(
                            onPressed: isBtnDisabled(2)
                                ? null
                                : () {
                                    onPressed(2, this.gameState[2]);
                                  },
                            child: Text(this.gameState[2]),
                            color: unclickedColor,
                            disabledColor: clickedColor,
                          ),
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
                            onPressed: isBtnDisabled(3)
                                ? null
                                : () {
                                    onPressed(3, this.gameState[3]);
                                  },
                            child: Text(this.gameState[3]),
                            color: unclickedColor,
                            disabledColor: clickedColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: RaisedButton(
                            onPressed: isBtnDisabled(4)
                                ? null
                                : () {
                                    onPressed(4, this.gameState[4]);
                                  },
                            child: Text(this.gameState[4]),
                            color: unclickedColor,
                            disabledColor: clickedColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: RaisedButton(
                            onPressed: isBtnDisabled(5)
                                ? null
                                : () {
                                    onPressed(5, this.gameState[5]);
                                  },
                            child: Text(this.gameState[5]),
                            color: unclickedColor,
                            disabledColor: clickedColor,
                          ),
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
                            onPressed: isBtnDisabled(6)
                                ? null
                                : () {
                                    onPressed(6, this.gameState[6]);
                                  },
                            child: Text(this.gameState[6]),
                            color: unclickedColor,
                            disabledColor: clickedColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: RaisedButton(
                            onPressed: isBtnDisabled(7)
                                ? null
                                : () {
                                    onPressed(7, this.gameState[7]);
                                  },
                            child: Text(this.gameState[7]),
                            color: unclickedColor,
                            disabledColor: clickedColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: RaisedButton(
                            onPressed: isBtnDisabled(8)
                                ? null
                                : () {
                                    onPressed(8, this.gameState[8]);
                                  },
                            child: Text(this.gameState[8]),
                            color: unclickedColor,
                            disabledColor: clickedColor,
                          ),
                        ),
                      ],
                    ),
                    ButtonTheme(
                      minWidth: 100,
                      buttonColor: unclickedColor,
                      child: RaisedButton(
                        onPressed: () {
                          clearboard();
                        },
                        child: Text("Clear the board"),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        resetGame();
                      },
                      child: Text("Press to reset the game"),
                    ),
                  ],
                ),
              ),
            ]));
  }
}
