import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class PopupMenuDviderPage extends StatefulWidget {
  @override
  _CheckedPopupMenuPageState createState() => _CheckedPopupMenuPageState();
}

class _CheckedPopupMenuPageState extends State<PopupMenuDviderPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("PopupMenuDviderPage"),
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
