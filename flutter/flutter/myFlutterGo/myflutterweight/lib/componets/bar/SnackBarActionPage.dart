import 'package:flutter/material.dart';

class SnackBarActionPage extends StatefulWidget {
  @override
  _BottomAppBarState createState() => _BottomAppBarState();
}

class _BottomAppBarState extends State<BottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("BottomAppBar"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column();
  }
}
