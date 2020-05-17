import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.blue,
      child: new Center(
        child: new Text(
          "welcome",
          textDirection: TextDirection.ltr,
          style: new TextStyle(
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            fontSize: 34.5
          ),
        )
      )
    );
  }
}