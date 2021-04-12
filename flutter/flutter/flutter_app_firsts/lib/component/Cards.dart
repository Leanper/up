import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 320, height: 480)..init(context);
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Card"),
           backgroundColor: Colors.deepOrangeAccent,
        ),
//        body: CardDemo(),
        body: Sceen(),

      ),
    );
  }

  Widget CardDemo(){
    return Card(

      margin: EdgeInsets.all(10),
      clipBehavior: Clip.hardEdge,
      color: Colors.deepPurple,
      child: Text("卡片显示",style: TextStyle(
        wordSpacing: 2.0,

      )),
      elevation: 55.0,

    );
  }

  Widget Sceen(){
    return new Column(
      children: <Widget>[
        Container( width: ScreenUtil().setWidth(30), height: ScreenUtil().setWidth(30),color: Colors.deepPurple, ),
        Container( width: ScreenUtil().setWidth(35), height: ScreenUtil().setHeight(20),color: Colors.cyanAccent, ),
        Container( width: 30, height: 30,color: Colors.cyan, ),
        Container( width: 35, height: 20,color: Colors.black, ),

      ],


    );
    //长方形:
    //如果你想显示一个正方形:
  }
}
