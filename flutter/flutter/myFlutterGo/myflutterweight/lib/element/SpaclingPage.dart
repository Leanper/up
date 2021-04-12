import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class SpaclingPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<SpaclingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("Spacling"),
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
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            width: 100,
            height: 100
            ,color: Colors.green,
            alignment: Alignment.center,
            child: Text("Padding"))
        ),





      ],
    );
  }
}
