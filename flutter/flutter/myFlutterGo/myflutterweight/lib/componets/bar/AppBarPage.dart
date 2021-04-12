import 'package:flutter/material.dart';

class AppBarPage extends StatefulWidget {
  @override
  _AppBarPageState createState() => _AppBarPageState();
  bool loading = true;

}

class _AppBarPageState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("AppBar"),
          backgroundColor: Colors.deepPurple,
          leading: Icon(Icons.arrow_back),
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column();
  }
}
