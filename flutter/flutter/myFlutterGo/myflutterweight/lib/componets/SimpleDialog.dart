import 'package:flutter/material.dart';

class SimpleDialogPage extends StatefulWidget {
  @override
  _SimpleDialogPageState createState() => _SimpleDialogPageState();
}

class _SimpleDialogPageState extends State<SimpleDialogPage> {
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
    return Column();
  }
}
