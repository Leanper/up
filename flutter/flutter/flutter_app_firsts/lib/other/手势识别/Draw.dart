import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Drawable extends StatefulWidget {
  @override
  _DrawableState createState() => _DrawableState();
}

class _DrawableState extends State<Drawable> {

  //https://www.jianshu.com/p/924428a31b6b 拖动列表
      List<Widget> mylist=<Widget>[Text("第一个"),Text("第二个"),Text("第一3个"),Text("第一4个"),Text("第一5个"),Text("第一6个"),Text("第一7个")];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("拖动控件"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    return LongPressDraggable(child: GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 1,
      children: mylist,

    ), feedback: SizedBox(
      child: Center(
        child: Icon(Icons.feedback),
      ),
    ));


  }

}
