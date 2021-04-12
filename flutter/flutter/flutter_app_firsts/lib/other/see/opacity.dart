import 'package:flutter/material.dart';

class OpactiyPage extends StatefulWidget {
  @override
  _OpactiyPageState createState() => _OpactiyPageState();
}

class _OpactiyPageState extends State<OpactiyPage> {
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
    return Opacity(
        opacity: 0.5,
       child: Text("透明效果",style: TextStyle(

       ),),
    );
  }
}
