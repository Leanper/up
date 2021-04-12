import 'package:flutter/material.dart';

class SlidePage extends StatefulWidget {
  @override
  _SlidePageState createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> {
  double _value=10.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        floatingActionButton: FloatingActionButton(onPressed: (){

          setState(() {
            _value<100?_value+=10:_value=100.0;

          });
        }),
        appBar: AppBar(
          title: Text("slide"),
          backgroundColor: Colors.deepPurple,
        ),
      ),

    );
  }

  Widget MyBody() {
    return Slider(
      value: _value,
      max: 100.0,
      activeColor: Colors.deepPurple,
      inactiveColor: Colors.red,

      divisions: 10,
      label:"值为$_value",
      onChanged: (value){
        setState(() {
          _value=value;
        });
      },


    );
  }

}
