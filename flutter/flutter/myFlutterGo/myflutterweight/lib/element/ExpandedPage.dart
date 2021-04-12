import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class ExpandedPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("Expanded"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: RaisedButton(
              child: Text("expand"),
              color: Colors.green,
            )),
        RaisedButton(child: Text("普通按钮"),color: Colors.red,),
      ],
    );
  }
}
