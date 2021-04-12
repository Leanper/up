import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';

class NestScrollViewPage extends StatefulWidget {
  @override
  _ScrollViewPageState createState() => _ScrollViewPageState();
}

class _ScrollViewPageState extends State<NestScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("CustomScrollView"),
          backgroundColor: GlobalColorConfig.themeColor,
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column();
  }
}
