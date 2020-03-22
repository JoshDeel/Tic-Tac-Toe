import 'package:flutter/material.dart';
import 'package:tictactoe/winnerPage.dart';

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

class Page extends StatefulWidget{
  _Page createState() => new _Page();
}

class _Page extends State<Page>{
  void nextPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => WinnerPage(),));
  }
  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
          title: Text('Tic Tac Toe'),
        ),
        body: new Center(
          child: RaisedButton(onPressed: () {nextPage();}, child: Text("SOMETHING")),
        ),
      );
  }
}
