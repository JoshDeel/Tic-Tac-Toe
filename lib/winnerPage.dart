import 'package:flutter/material.dart';

class WinnerPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: "TEST",
      home: Page(),
    );
  }
}


class Page extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Winner Page"),
      ),
      body: Center(
        child: RaisedButton(onPressed: (){Navigator.pop(context);}, child: Text("GO BACK"),),
      ),
    );
  }
}