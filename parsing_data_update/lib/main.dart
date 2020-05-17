import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//https://jsonplaceholder.typicode.com/posts

void main() async{
  List _data = await getJSON();
  print(_data[0]["body"]);
  for(var i = 0; i<_data.length; i++){
    print("Data: ${_data[i]["title"]}");
  }
  
  runApp(new MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(
        title: Text("JSON Parsing"),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
          itemCount: _data.length,
          padding: const EdgeInsets.all(4.4),
          itemBuilder: (BuildContext context, int index){

            return Column(
              children: <Widget>[
                Divider(height: 3.4,),
                ListTile(
                  title: Text(_data[index]["title"],
                  style: TextStyle(
                    fontSize: 17.2,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  subtitle: Text(_data[index]['body']),

                  leading: CircleAvatar(
                    //radius: 45.6,
                    backgroundColor: Colors.orange,
                    child: Text(_data[index]["title"][0]),
                  ),
                  
                  onTap: ()=> showTapMessage(context,_data[index]["title"])
                )
              ],
            );

          }),
    )
  ));
}
void showTapMessage(BuildContext context, String message){
  var alertDialog = new AlertDialog(
    title: Text(message),
    actions: <Widget>[
     FlatButton(
       onPressed: () => Navigator.of(context).pop(),
       child: Text("Ok")
     )
    ],
  );
  showDialog(context: context, builder: (context){
    return alertDialog;
  });
}
Future<List> getJSON() async{

  String apiUrl = "https://jsonplaceholder.typicode.com/posts";

  http.Response response = await http.get(apiUrl);

  return json.decode(response.body);

}