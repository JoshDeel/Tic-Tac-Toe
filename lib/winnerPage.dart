import 'package:flutter/material.dart';

/** 
class WinnerPage extends StatefulWidget{
  _WinnerPage createState() => new _WinnerPage();
  
}
*/


class WinnerPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: "WINNER PAGE",
      home: MainPage(),
      routes: <String, WidgetBuilder>{
        '/' : (BuildContext context) => MainPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("YES"),
      ),
      body: Text("SDLKJS:DLKGJ"),
    );
  }
}
