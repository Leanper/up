import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';

import 'package:meta/dart2js.dart';
class PointEventPage extends StatefulWidget {
  @override
  _PointEventPageState createState() => _PointEventPageState();
}

class _PointEventPageState extends State<PointEventPage> {

  String _pointName="未点击状态";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("事件处理"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Listener(
        child: Text(_pointName),
        onPointerCancel: (PointerCancelEvent event){
          _show("onPointCancel");
          print("oncancel");
        },
        onPointerDown: (PointerDownEvent e){
          _show("down");
          print("down"+e.toString());

        },
        onPointerUp: (PointerUpEvent e){
          _show("PointerUpEvent");
          print("PointerUpEvent");

        },
        onPointerMove: (PointerMoveEvent e){
          print("move"+e.toString());
          print("move2$e.distance");

          _show("move");

        },


      ),
    );
  }


  void _show(String text){
    setState(() {
      _pointName=text;
    });
  }
}
