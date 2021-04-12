import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';


class ScrollViewPage extends StatefulWidget {
  @override
  _ScrollViewPageState createState() => _ScrollViewPageState();
}

class _ScrollViewPageState extends State<ScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("ScrollView"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column();
  }
}
