import 'package:flutter/material.dart';

class ChipThemePage extends StatefulWidget {
  @override
  _ChipThemePageState createState() => _ChipThemePageState();
}

class _ChipThemePageState extends State<ChipThemePage> {
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
    return GridView.count(crossAxisCount: null);
  }

}
