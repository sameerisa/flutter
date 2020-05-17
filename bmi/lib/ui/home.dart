import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }

}

class HomeState extends State<Home>{

  double inches;
  
  final TextEditingController _ageController = new TextEditingController();
  final TextEditingController _heightController = new TextEditingController();
  final TextEditingController _weightController = new TextEditingController();
  
  void calculateBMI(){
    setState(() {
      int age = int.parse(_ageController.text);
      double height = double.parse(_heightController.text);
      inches = height*12;
      double weight = double.parse(_weightController.text);
    });


  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("BMI"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      backgroundColor: Colors.white,

      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(2.5),
          children: <Widget>[
            new Image.asset('images/bmi.png.png',
            height: 133.8,
            width: 200.0,
            ),

            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              height: 358,
              width: 290,
              color: Colors.grey.shade300,
              child: new Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: new TextField(
                      controller: _ageController,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: 'age',
                        icon: new Icon(Icons.person_outline)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new TextField(
                      controller: _heightController,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: 'Height',
                        hintText: 'in feet',
                        icon: new Icon(Icons.insert_chart)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new TextField(
                      controller: _weightController,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: 'Weight',
                        hintText: 'in lbs',
                        icon: new Icon(Icons.dehaze)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new RaisedButton(onPressed: handleButton()),
                  ),
                  new Padding(padding: EdgeInsets.all(5.6)),
                  new Text(
                    "BMI:",
                        style: new TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 19.4,
                          fontWeight: FontWeight.w500
                  ),

                  ),
                  new Padding(padding: EdgeInsets.all(5.6)),
                  new Text("weight",
                  style: new TextStyle(
                    color: Colors.red,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w500
                  ),
                  )
                ],
              ),
              
            )
          ],
          
        ),
      ),//
    );
  }

  handleButton(){
    calculateBMI();
  }
}
