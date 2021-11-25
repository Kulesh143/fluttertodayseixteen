import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    home: new Home(),
  ));
}
class Home extends StatefulWidget{
  @override
  _HomeState createState()=>new _HomeState();
}
class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text("Home"),
            RaisedButton(onPressed: (){Navigator.of(context).pushNamed('/Second');},child: Text('Second'),),
            RaisedButton(onPressed: (){Navigator.of(context).pushNamed('/Third');},child: Text('Third'),),
          ],
        ),
      ),
    );
  }
}
