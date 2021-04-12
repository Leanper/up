import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';

class AnimatedListPage extends StatefulWidget {
  @override
  _AnimatedListPageState createState() => _AnimatedListPageState();
}

class _AnimatedListPageState extends State<AnimatedListPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("AnimatedListPage"),
          backgroundColor: GlobalColorConfig.themeColor,
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column();
  }
}
