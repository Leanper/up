import 'package:flutter/material.dart';

class LinearProgressIndicatorPage extends StatefulWidget {
  @override
  _LinearProgressIndicatorPageState createState() => _LinearProgressIndicatorPageState();
}

class _LinearProgressIndicatorPageState extends State<LinearProgressIndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("LinearProgressIndicator"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {

    return Column(
      children: <Widget>[
      LinearProgressIndicator(
      value: 0.3,
      semanticsLabel: "se",
      semanticsValue: "va",
      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
      backgroundColor: Colors.deepPurple,
    ),
     CircularProgressIndicator(
      value: 0.3,
      semanticsLabel: "se",
      semanticsValue: "va",
      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
      backgroundColor: Colors.deepPurple,
    ),

      ],
    );

//    return LinearProgressIndicator(
//      value: 0.3,
//      semanticsLabel: "se",
//      semanticsValue: "va",
//      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
//      backgroundColor: Colors.deepPurple,
//    );
//    CircularProgressIndicator
//    return CircularProgressIndicator(
//      value: 0.3,
//      semanticsLabel: "se",
//      semanticsValue: "va",
//      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
//      backgroundColor: Colors.deepPurple,
//    );
  }
}
