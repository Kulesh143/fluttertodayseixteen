import 'package:flutter/material.dart';
import 'package:fluttertodayseixteen/screens/home.dart';
import 'package:fluttertodayseixteen/screens/second.dart';
import 'package:fluttertodayseixteen/screens/third.dart';
void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      routes:
      <String,WidgetBuilder>{
        //all thre available pages
        '/Home':(BuildContext context)=>new Home(),
        '/Second':(BuildContext context)=>new Second(),
        '/Third':(BuildContext context)=>new Third(),
      },
      home: new Home(),
    );
  }

}