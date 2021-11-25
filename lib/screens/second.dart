import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    home: new Second(),
  ));
}
class Second extends StatefulWidget{
  @override
  _SecondState createState()=>new _SecondState();
}
class _SecondState extends State<Second>{
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
            new Text("Second"),
            RaisedButton(onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('Third', (Route<dynamic>route) => false);},child: Text('Next'),),
            RaisedButton(onPressed: (){Navigator.of(context).pop();},child: Text('Back'),),

          ],
        ),
      ),
    );
  }
}
