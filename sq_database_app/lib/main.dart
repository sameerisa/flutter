import 'package:flutter/material.dart';
import 'package:sqdatabaseapp/util/database_helper.dart';
import 'package:sqdatabaseapp/models/user.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

List _users;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var db = new DatabaseHelper();

  //await db.saveUser(new User("bond", "james"));

  //int saveduser = await db.saveUser(new User("Bonita", "heyll0"));
  /* User ana = await db.getUser(1);
  print("Got username: ${ana.username}");*/

  /*User anaUpdated = User.fromMap({
    "username": "UpdatedAna",
    "password": "updatedPassword",
    "id": 1
  });

  await db.updateUser(anaUpdated);*/

  //int userDeleted = await db.deleteUser(2);

  //print("Got deleted username: $userDeleted");

  int count = await db.getCount();
  print("Count: $count");

  _users = await db.getAllUsers();

  for (int i = 0; i < _users.length; i++) {
    User user = User.map(_users[i]);
    print("Username: ${user.username}, User Id: ${user.id}");
  }

  runApp(new MaterialApp(
    title: "Database",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Database"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: new ListView.builder(itemCount: _users.length, itemBuilder: (_, int position) {

        return new Card(
          color: Colors.white,
          elevation: 2.0,
          child: new ListTile(
            title: new Text("User: ${User.fromMap(_users[position]).username}"),
            subtitle: new Text("Id: ${User.fromMap(_users[position]).id}"),

            onTap:()=> debugPrint("${User.fromMap(_users[position]).password}")
          ),
        );

      }),
    );
  }
}
