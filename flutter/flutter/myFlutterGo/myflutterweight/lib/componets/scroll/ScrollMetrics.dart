import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';

class ScrollMetricsPage extends StatefulWidget {
  @override
  _ScrollViewPageState createState() => _ScrollViewPageState();
}

class _ScrollViewPageState extends State<ScrollMetricsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("VALUE"),
          backgroundColor: GlobalColorConfig.themeColor,
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column();
  }
}
