import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  @override
  _SimpleDialogPageState createState() => _SimpleDialogPageState();
}

class _SimpleDialogPageState extends State<ScaffoldPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("dialog"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column();
  }
}
