import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    home: new Third(),
  ));
}
class Third extends StatefulWidget{
  @override
  _ThirdState createState()=>new _ThirdState();
}
class _ThirdState extends State<Third>{
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
            new Text("Third"),
            RaisedButton(onPressed: (){
              if(Navigator.of(context).canPop()){
                Navigator.of(context).pop();
              }else{
                Navigator.of(context).pushNamed('/Second');
              }
            },child: Text('Back'),),
          ],
        ),
      ),
    );
  }
}
