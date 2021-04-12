import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
import 'dart:ui';

class CanvasPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<CanvasPage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("Canvas"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody() {

    return Column(
      children: <Widget>[

      ],
    );

  }
}


class myPainter extends CustomPainter{

  Paint _myPaint=Paint()
    ..blendMode=BlendMode.darken
    ..color=Colors.red;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(100, 100), 100, _myPaint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }

}