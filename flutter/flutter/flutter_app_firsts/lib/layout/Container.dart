import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {

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
    return Container(

      margin: EdgeInsets.fromLTRB(20, 90, 0, 0),
//        color: Colors.black26,
      child: Text("文本"),
      width: 200,
      height: 200,
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),


      decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.red,
            width: 3.0
          )
//          borderRadius: BorderRadius.all(Radius.circular(150))
      ),
    );
//    body: Text("My heart will go on\n"*4,
//    style: TextStyle(
//    fontFamily: "Courier",
//
//    ),
//    softWrap: true,
//    textAlign: TextAlign.center,//文本对齐方式
//    maxLines: 1,
//
//    overflow: TextOverflow.ellipsis,//eliipsis 文本以点结束 。clip没有点一行显示 多余的不显示 fade 底部渐变没有
//    textDirection: TextDirection.rtl,
//    textScaleFactor: 1.4,//同fontsize 调整字体大小
//
//
//    ),

  }

}


