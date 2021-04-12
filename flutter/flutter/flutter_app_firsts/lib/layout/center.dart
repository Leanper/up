import 'package:flutter/material.dart';

class CenterPage extends StatefulWidget {
  @override
  _CenterPageState createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyCenterBody(),
        appBar: AppBar(
          title: Text("Center"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyCenterBody() {
    return Center(
      child: Text("文本居中"),
      widthFactor: 2,
      heightFactor: 2,//宽高设置比例系数
    );
  }

}
