import 'package:flutter/material.dart';

class PlaceHolderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("placeholder"),
          ),
          body: Placeholder(
            color: Colors.deepPurple,

            key: Key("ddddddd"),

          ),
        ),
      ),
    );
  }
}
