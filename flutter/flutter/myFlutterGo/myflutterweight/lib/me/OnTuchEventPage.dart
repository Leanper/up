
import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OnTuchEventPage extends StatefulWidget {
  @override
  _OnTuchEventPageState createState() => _OnTuchEventPageState();
}

class _OnTuchEventPageState extends State<OnTuchEventPage> {


  double left=80.0;
  double right=80.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("触摸事件"),
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
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child:   GestureDetector(
            child: Text("双击事件"),
            onDoubleTap: (){
              Fluttertoast.showToast(msg: "双击事件",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIos: 1,
                  backgroundColor: Colors.grey,
                  textColor:Colors.cyanAccent);
            },
          ),
        ),

        Container(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
            child: Text("触摸事件"),

            onTap: (){
              Fluttertoast.showToast(msg: "触摸事件",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIos: 1,
                  backgroundColor: Colors.grey,
                  textColor:Colors.cyanAccent);
            },




          ),
        ),
        GestureDetector(
          child: Text("这是一个按钮"),

          onLongPress: (){
            Fluttertoast.showToast(msg: "长按事件",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIos: 1,
                backgroundColor: Colors.grey,
                textColor:Colors.cyanAccent);
          },


        ),
        GestureDetector(
          child: Text("这是一个按钮"),
          onVerticalDragStart: (s){
            print("位置变化$s");
          },

        ),
        GestureDetector(
          child: Text("横向位置变化"),
          onHorizontalDragStart: (s){
            print("横向位置变化$s");
          },
        ),




//        Positioned(
//
//          child:GestureDetector(
//              child: Text("拖动文本"),
//              onPanUpdate: (e){
//                setState(() {
//                  left=left+e.delta.dx;
//                  right=right+e.delta.dy;
//                });
//
//
//              },
//            ),
//              left: left,
//              top: right,
//            )

      GestureDetector(
        onScaleUpdate: (e){

          setState(() {
            left=300*e.scale.clamp(.5, 10);
          });
        },
        child: Container(
          width: left,
          height: right,
          color: Colors.red,

        ),

      )
          ],


    );
  }
}
