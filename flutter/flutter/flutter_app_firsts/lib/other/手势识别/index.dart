import 'package:flutter/material.dart';

import 'package:flutter_app_firsts/other/手势识别/Draw.dart';
import 'package:flutter_app_firsts/other/手势识别/Getsturedeteor.dart';

class indexPageGesture extends StatefulWidget {
  @override
  _indexPageGestureState createState() => _indexPageGestureState();
}

class _indexPageGestureState extends State<indexPageGesture> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("视觉"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    return new GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 1,
      padding: EdgeInsets.all(1),

      crossAxisSpacing: 1,

      children: <Widget>[
        JumpButton(context, Drawable(), "拖动", Icons.money_off),
        JumpButton(context, GetsturePage(), "Opacity", Icons.looks),

      ],


    );
  }

  Widget JumpButton(context,classes,info,icon){
    return new RaisedButton(onPressed: (){
      Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => classes));
    },
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon,color: Colors.red),
          Text(info,style: TextStyle(color: Colors.red))
        ],
      ),
      color: Colors.white,
    );
  }

}
