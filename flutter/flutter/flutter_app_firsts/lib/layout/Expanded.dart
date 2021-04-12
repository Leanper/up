import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  @override
  _ExpandedPageState createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: Mybody(),
        appBar: AppBar(
          title: Text("Expanded"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget Mybody() {
    return Row(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              print('点击红色按钮事件');
            },
            color: const Color(0xffcc0000),
            child: new Text('红色按钮'),
          ),
          new Expanded(
            flex: 3,
            child: new RaisedButton(
              onPressed: () {
                print('点击黄色按钮事件');
              },
              color: const Color(0xfff1c232),
              child: new Text('黄色按钮'),
            ),
          ),
          new RaisedButton(
            onPressed: () {
              print('点击粉色按钮事件');
            },
            color: const Color(0xffea9999),
            child: new Text('粉色按钮'), ), ] );
  }


}
