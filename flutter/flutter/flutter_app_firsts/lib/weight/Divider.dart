import 'package:flutter/material.dart';

class DividerPage extends StatefulWidget {
  @override
  _DividerPageState createState() => _DividerPageState();
}

class _DividerPageState extends State<DividerPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("VALUE"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column(
      
      children: <Widget>[
        Text("第一栏"),
        Divider(
          height: 20,
          color: Colors.indigo,
          indent: 3.0,
        ),
        Text("第二栏1"),

      ],
    );
  }
}
