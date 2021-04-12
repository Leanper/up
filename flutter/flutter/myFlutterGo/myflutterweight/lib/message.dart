import 'package:flutter/material.dart';
import 'utils/colorUtils.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
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
