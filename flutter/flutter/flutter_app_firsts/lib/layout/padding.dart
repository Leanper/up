import 'package:flutter/material.dart';


class PaddingPage extends StatefulWidget {
  @override
  _PaddingPageState createState() => _PaddingPageState();
}

class _PaddingPageState extends State<PaddingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("padding"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column();
  }
}
