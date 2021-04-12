import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';

class ListBodyPage extends StatefulWidget {
  @override
  _ListBodyPageState createState() => _ListBodyPageState();
}

class _ListBodyPageState extends State<ListBodyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("ListBodyPage"),
          backgroundColor: GlobalColorConfig.themeColor,
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column();
  }
}
