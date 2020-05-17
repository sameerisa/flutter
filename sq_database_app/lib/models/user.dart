class User{
  String _username;
  String _password;
  int _id;


  User(this._username, this._password);

  User.map(dynamic obj){
    this._username = obj['username'];
    this._password = obj['password'];
    this._id = obj['id'];

  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get username => _username;

  set username(String value) {
    _username = value;
  }

  Map<String, dynamic> toMap(){
    var map = new Map<String, dynamic>();
    map["username"] = _username;
    map["password"] = _password;

    if(id != null){
      map["id"] = _id;
  }
    return map;
}

  User.fromMap(Map<String, dynamic> map){
    this._username = map["username"];
    this._password = map["password"];
    this._id = map["id"];
  }


}