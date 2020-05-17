import 'package:flutter/material.dart';
import 'package:notodo/ui/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NoToDo',
      home: new Home(),
    );
  }
}