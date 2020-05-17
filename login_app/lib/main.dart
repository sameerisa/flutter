import 'package:flutter/material.dart';
import 'package:login_app/ui/CustomLoginForm.dart';

void main()=> runApp(Login());

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final appTitle = "Login";

    // TODO: implement build
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          //centerTitle: false,
        ),
        backgroundColor: Colors.blueGrey,
        body: CustomLoginForm(),
      )
    );
  }
}