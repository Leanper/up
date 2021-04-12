import 'package:flutter/material.dart';


class RowgPage extends StatefulWidget {
  @override
  _PaddingPageState createState() => _PaddingPageState();
}

class _PaddingPageState extends State<RowgPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("padding"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }


  Widget MyBody() {
/**
* FitteBox 自适应大小 防止内容大于屏幕
* */
    return FittedBox(
      child: Row(
        children: <Widget>[

          Text("是电视动画"),
          Text("是电视动画"),
          Text("是电视动画"),
          Text("是电视动画"),
          Text("是电视动画"),
          Text("是电视动画"),
          Text("是电视动画"),
          Text("是电视动画"),
          Text("是电视动画"),
          Text("是电视动画"),
          Text("是电视动画"),

        ],

      ),
    );
    return Row(
      children: <Widget>[

        Text("是电视动画"),
        Text("是电视动画"),
        Text("是电视动画"),
        Text("是电视动画"),
        Text("是电视动画"),
        Text("是电视动画"),

      ],

    );
  }
}
