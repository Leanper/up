import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class DropdownMenuItemPage extends StatefulWidget {
  @override
  _CheckedPopupMenuPageState createState() => _CheckedPopupMenuPageState();
}

class _CheckedPopupMenuPageState extends State<DropdownMenuItemPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("DropdownMenuItemPage"),
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
