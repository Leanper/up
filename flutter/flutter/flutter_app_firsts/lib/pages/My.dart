import 'package:flutter/material.dart';
import '../util/indexUtils.dart';
import '../component/GridView.dart';
class MyPages extends StatefulWidget {
  @override
  _MyPagesState createState() => _MyPagesState();
}

class _MyPagesState extends State<MyPages> {
  List<Widget> list= <Widget>[GridViewState(),GridViewState()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyPageBody(),
        appBar: AppBar(
          title: Text("我的"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyPageBody() {
    return Column(
      children: <Widget>[
        Text("sdsd "),
        Text("sdsd "),
        Text("sdsd "),

        LayoutIndexPage(list,"baigot"),

      ],

    );
  }

}
