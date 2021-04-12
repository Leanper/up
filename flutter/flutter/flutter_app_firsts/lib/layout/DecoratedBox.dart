import 'package:flutter/material.dart';

class DecotatedBoxPage extends StatefulWidget {
  @override
  _DecotatedBoxPageState createState() => _DecotatedBoxPageState();
}

class _DecotatedBoxPageState extends State<DecotatedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("DecoratedBox"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    return DecoratedBox(
      position: DecorationPosition.background,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors:[Colors.red,Colors.orange[700]]), //背景渐变
        borderRadius: BorderRadius.circular(3.0), //3像素圆角
        boxShadow: [ //阴影
          BoxShadow(
              color:Colors.black54,
              offset: Offset(2.0,2.0),
              blurRadius: 4.0
          )
        ],
      ),

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
        child: Text("Login", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
