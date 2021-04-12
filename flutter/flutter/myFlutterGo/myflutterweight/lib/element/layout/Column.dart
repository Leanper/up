import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class ColumnPage extends StatefulWidget {
  @override
  _ColumnPageState createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("column"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody() {
    return Container(
      width: 300,
      height: double.infinity,
      color: Colors.green,
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
              width: 100,
              height: 100,
              color: Colors.cyan),
          Container(
              width: 100,
              height: 100,
              color: Colors.amber),
          Container(
              width: 100,
              height: 100,
              color: Colors.black),
        ],
      ),
    );
  }
}
