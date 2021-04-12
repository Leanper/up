import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class RowPage extends StatefulWidget {
  @override
  _RowPageState createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("Row"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("内容"),
        Text("内容"),
        Text("内容"),
        Text("内容"),
        Text("内容"),
        Text("内容"),

      ],
      textBaseline: TextBaseline.ideographic,

    );
  }
}
